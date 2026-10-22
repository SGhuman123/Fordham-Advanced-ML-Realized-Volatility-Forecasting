function explain_rf(target, h, setName, phase, scenario)
%EXPLAIN_RF Shapley values and accumulated local effects (ALE) for the random
%   forest of the last fold of a walk-forward run.
%   explain_rf('SPY', 22, 'D', 'dev')
%   The forest is refitted with that fold's tuned hyperparameters on the same
%   training rows, then explained on the origins of the forecast year.
%   Output: Output/tables/<phase>/<scenario>/shap_*.csv, ale_*.png

if nargin < 5, scenario = 'main'; end
cfg = rv_config();
P   = load_panel(cfg);
S   = load(fullfile(cfg.outDir, 'forecasts', phase, scenario, sprintf('%s_h%d.mat', target, h)));
fo  = S.R.(['RF_' setName]).folds(end);
Dz  = build_design(P, S.spec, cfg);

% rebuild the last fold's training / forecast rows exactly as walk_forward does
k = find(cfg.horizons == h);
[~, keep] = ismember(fo.features, Dz.names);
X = Dz.X(:, keep);  y = Dz.Y(:, k);  yr = year(Dz.dates);
for j = 1:numel(keep)                       % the fold's FFD transforms (proposal 4.3)
    if fo.ffd_d(j) > 0, X(:, j) = ffd(X(:, j), fo.ffd_d(j), cfg.ffd.tau); end
end
req = ismember(Dz.group(keep), {'A','L'}) | strcmp(fo.features, 'es_rk_d');
start = sample_start(S.spec, setName, cfg);
if strcmp(S.spec.window, 'rolling')
    start = max(start, datetime(fo.year - cfg.rollYears.(target), 1, 1));
end
lastTrain = find(yr <= fo.year - 1, 1, 'last');
ok = all(~isnan(X(:, req)), 2);
tr = Dz.dates >= start & Dz.tEnd(:, k) <= lastTrain & ~isnan(y) & ok;
te = yr == fo.year & ok & Dz.tEnd(:, k) <= Dz.lastValid;
med = median(X(tr,:), 1, 'omitnan');
for j = 1:size(X, 2), X(isnan(X(:,j)), j) = med(j); end

rng(cfg.seed, 'twister');
mdl = TreeBagger(cfg.rf.nTrees, X(tr,:), y(tr), 'Method', 'regression', ...
    'MinLeafSize', fo.params.leaf, 'NumPredictorsToSample', fo.params.mtry);
f = @(Z) predict(mdl, Z);

outDir = fullfile(cfg.outDir, 'tables', phase, scenario);
if ~isfolder(outDir), mkdir(outDir); end
tag = sprintf('%s_h%d_%s_%d', target, h, setName, fo.year);

% ---- Shapley values (interventional kernel SHAP) on a sample of origins
Xtr = X(tr,:);  Xte = X(te,:);
bg = Xtr(randperm(size(Xtr,1), min(200, size(Xtr,1))), :);
q  = Xte(round(linspace(1, size(Xte,1), min(60, size(Xte,1)))), :);
ex = shapley(f, bg, 'QueryPoints', q);
sv = ex.MeanAbsoluteShapley;
sv.Properties.VariableNames = {'feature', 'mean_abs_shap'};
sv.feature = fo.features(:);
sv = sortrows(sv, 'mean_abs_shap', 'descend');
writetable(sv, fullfile(outDir, ['shap_' tag '.csv']));

% ---- first-order ALE for the six most important features
top = sv.feature(1:min(6, height(sv)));
fig = figure('Visible', 'off', 'Position', [100 100 1100 600]);
for i = 1:numel(top)
    j = find(strcmp(fo.features, top{i}));
    [gx, ale] = ale1(f, Xtr, j, 20);
    subplot(2, 3, i);
    plot(gx, ale, '-o', 'MarkerSize', 3);  grid on
    title(strrep(top{i}, '_', '\_'));
    xlabel('feature value');  ylabel('ALE (daily %^2)');
end
sgtitle(sprintf('RF ALE: %s target, h = %d, set %s, fold %d', target, h, setName, fo.year));
exportgraphics(fig, fullfile(outDir, ['ale_' tag '.png']), 'Resolution', 150);
close(fig);
fprintf('explain_rf: wrote shap_%s.csv and ale_%s.png\n', tag, tag);
end

function [grid, ale] = ale1(f, X, j, K)
% Apley & Zhu (2020) first-order ALE on quantile bins, centred to mean zero.
grid = unique(quantile(X(:, j), linspace(0, 1, K + 1)));
if numel(grid) < 3, ale = zeros(size(grid)); return; end
bin = discretize(X(:, j), grid, 'IncludedEdge', 'right');
bin(isnan(bin)) = 1;
nb = numel(grid) - 1;
eff = zeros(nb, 1);  cnt = zeros(nb, 1);
for b = 1:nb
    Xb = X(bin == b, :);
    if isempty(Xb), continue; end
    lo = Xb;  lo(:, j) = grid(b);
    hi = Xb;  hi(:, j) = grid(b + 1);
    eff(b) = mean(f(hi) - f(lo));
    cnt(b) = size(Xb, 1);
end
acc = [0; cumsum(eff)];
mid = (acc(1:end-1) + acc(2:end)) / 2;
ale = acc - sum(mid .* cnt) / sum(cnt);
end
