function importance_chart(outDir)
%IMPORTANCE_CHART Feature-importance chart for the winning SPY 1-day forests.
%   Bars: impurity-importance share of the top features of RF B and RF C,
%   averaged over the nine test re-fits. Whiskers: lowest and highest share
%   across those re-fits. Reads the saved forecasts; nothing is re-estimated.
%   Writes importance_test_SPY_h1.png to Report/figures.
cfg = rv_config();
if nargin < 1, outDir = fullfile(cfg.root, 'Report', 'figures'); end
S = load(fullfile(cfg.outDir, 'forecasts', 'test', 'main', 'SPY_h1.mat'));
E = readtable(fullfile(cfg.outDir, 'tables', 'test', 'main', 'explain_SPY_h1.csv'), 'TextType', 'string');

navy = [0.12 0.23 0.42];  ink = [0.25 0.25 0.3];  grid = [0.88 0.89 0.91];
nTop = 12;
sets = {'B','C'};
fig = figure('Visible', 'off', 'Position', [100 100 1100 520], 'Color', 'w');
try, theme(fig, 'light'); catch, end
tl = tiledlayout(fig, 1, 2, 'TileSpacing', 'compact', 'Padding', 'compact');
for s = 1:2
    folds = S.R.(['RF_' sets{s}]).folds;
    feats = unique([folds.features], 'stable');
    imp = zeros(numel(folds), numel(feats));
    for j = 1:numel(folds)                 % a feature absent from a fold counts as 0, as in explain_table
        [~, loc] = ismember(folds(j).features, feats);
        imp(j, loc) = folds(j).importance;
    end
    m = mean(imp, 1);

    % the shares must reproduce the saved explain_*.csv
    Es = E(E.model == "RF" & E.set == string(sets{s}), :);
    [ok, k] = ismember(string(feats'), Es.feature);
    if ~all(ok) || any(abs(m(:) - Es.mean_importance(k)) > 1e-10)
        warning('importance_chart: RF %s shares do not match explain_SPY_h1.csv', sets{s});
    end

    [~, ord] = sort(m, 'descend');  ord = ord(1:nTop);
    y = nTop:-1:1;
    ax = nexttile(tl);  hold(ax, 'on');
    barh(ax, y, 100 * m(ord), 0.68, 'FaceColor', navy, 'EdgeColor', 'none');
    for i = 1:nTop
        lo = 100 * min(imp(:, ord(i)));  hi = 100 * max(imp(:, ord(i)));
        plot(ax, [lo hi], [y(i) y(i)], '-', 'Color', [0.55 0.60 0.68], 'LineWidth', 1.5);
        if i <= 4
            text(ax, hi + 1, y(i), sprintf('%.0f%%', 100 * m(ord(i))), 'FontSize', 11, 'Color', ink, ...
                'VerticalAlignment', 'middle');
        end
    end
    ax.YTick = 1:nTop;
    ax.YTickLabel = label(feats(ord(end:-1:1)));
    ax.TickLabelInterpreter = 'none';
    ax.TickLength = [0 0];
    ax.FontSize = 11;
    ax.XColor = ink;  ax.YColor = ink;
    ax.XGrid = 'on';  ax.GridColor = grid;  ax.GridAlpha = 1;  ax.Layer = 'bottom';
    ax.Box = 'off';
    xlim(ax, [0 60]);  ylim(ax, [0.4 nTop + 0.6]);
    xlabel(ax, 'Share of impurity importance (%)');
    title(ax, sprintf('Random forest, set %s', sets{s}), 'FontWeight', 'bold', 'FontSize', 13, 'Color', [0.1 0.1 0.1]);
end
exportgraphics(fig, fullfile(outDir, 'importance_test_SPY_h1.png'), 'Resolution', 200);
close(fig);
fprintf('importance_chart: wrote importance_test_SPY_h1.png to %s\n', outDir);
end

function out = label(names)
% plain-language axis labels; any other name is shown as it is
map = {'iv_term','IV term slope (1Y - 1M)'; 'rv_d','Today''s RV'; 'rv_w','Weekly RV'; 'rv_m','Monthly RV'; ...
    'negret_d','Negative return, daily'; 'negret_w','Negative return, weekly'; 'negret_m','Negative return, monthly'; ...
    'log_vxn','Nasdaq implied vol (log VXN)'; 'log_vix','Log VIX'; 'log_rvx','Russell implied vol (log RVX)'; ...
    'parkinson_d','Parkinson range, daily'; 'parkinson_w','Parkinson range, weekly'; ...
    'iv_atm_1m','ATM IV, 1 month'; 'iv_atm_3m','ATM IV, 3 months'; 'iv_atm_1y','ATM IV, 1 year'; 'vrp','Variance risk premium'};
out = names;
for i = 1:numel(names)
    k = find(strcmp(map(:,1), names{i}), 1);
    if ~isempty(k), out{i} = map{k,2}; end
end
end
