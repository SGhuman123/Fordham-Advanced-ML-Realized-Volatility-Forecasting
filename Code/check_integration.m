function T = check_integration()
%CHECK_INTEGRATION Check that each team member's module agrees with the main pipeline.
%   1. Robin (Code/Robin, outputs in Output/Robin): the targets and the 46
%      features of sets A-D must equal build_design.m (scenario 'main') for
%      both targets, value for value.
%   2. Aryan (aryan/, outputs in aryan/output): his standalone HAR and
%      Persistence use their own rules (strict missing-day rule, ES holiday
%      rows dropped, floor at the training minimum of the target, decimal
%      variances), so they are compared with the main pipeline's HAR_A and
%      PER_A forecasts on common development origins: correlation of the
%      forecasts and the HAR/Persistence QLIKE ratio in each pipeline.
%   Development data only (the locked test is not touched). Prints one line per
%   check and writes Output/tables/integration_check.csv.
%
%   Run the modules first:  robin_targets; robin_align_features;
%   robin_feature_sets  (Code/Robin)  and  run('aryan/code/rv_har_pipeline.m').

cfg = rv_config();
P   = load_panel(cfg);
T   = table();

% ---- 1. Robin's feature sets vs build_design ------------------------------------
for tg = {'SPY', 'ES'}
    R  = readtable(fullfile(cfg.outDir, 'Robin', sprintf('feature_sets_%s.csv', tg{1})));
    Dz = build_design(P, make_spec(tg{1}, 'main'), cfg);
    [ok, loc] = ismember(dateshift(R.date, 'start', 'day'), Dz.dates);
    feats = setdiff(R.Properties.VariableNames, {'date','origin_ok','y_h1','y_h5','y_h22'}, 'stable');
    maxRel = 0;  nanMismatch = 0;  missing = {};
    for j = 1:numel(feats)
        c = find(strcmp(Dz.names, feats{j}));
        if isempty(c), missing{end+1} = feats{j}; continue; end %#ok<AGROW>
        [m, n] = compare(R.(feats{j})(ok), Dz.X(loc(ok), c));
        maxRel = max(maxRel, m);  nanMismatch = nanMismatch + n;
    end
    for k = 1:numel(cfg.horizons)
        [m, n] = compare(R.(sprintf('y_h%d', cfg.horizons(k)))(ok), Dz.Y(loc(ok), k));
        maxRel = max(maxRel, m);  nanMismatch = nanMismatch + n;
    end
    pass = all(ok) && isempty(missing) && maxRel < 1e-6 && nanMismatch == 0;
    T = [T; row("Robin feature sets vs build_design", tg{1}, NaN, sum(ok), ...
        sprintf('%d features + 3 targets; max relative difference %.1e; NaN mismatches %d; unmatched columns %d', ...
        numel(feats), maxRel, nanMismatch, numel(missing)), pass)]; %#ok<AGROW>
end

% ---- 2. Aryan's HAR and Persistence vs the main pipeline ---------------------------
F = readtable(fullfile(cfg.root, 'aryan', 'output', 'har_persistence_forecasts.csv'), 'TextType', 'string');
F = F(F.period == "dev" & F.scored == 1, :);
F.origin_date = datetime(F.origin_date);
for tg = {'SPY', 'ES'}
    for h = cfg.horizons
        S = load(fullfile(cfg.outDir, 'forecasts', 'dev', 'main', sprintf('%s_h%d.mat', tg{1}, h)), 'R');
        har = S.R.HAR_A.fc;  per = S.R.PER_A.fc;
        A = F(F.target == tg{1} & F.h == h, :);
        [d, ia, ib] = intersect(A.origin_date, har.date);
        [~, ic, id] = intersect(d, per.date);
        ia = ia(ic);  ib = ib(ic);
        y   = har.y(ib);                                  % main target on common days
        hM  = har.f(ib);  pM = per.f(id);
        hA  = cfg.scale * A.har(ia);  pA = cfg.scale * A.persistence(ia);
        rhoH = corr(hA, hM);  rhoP = corr(pA, pM);
        okq = ~isnan(y);
        rM = mean(qlike(y(okq), hM(okq))) / mean(qlike(y(okq), pM(okq)));
        rA = mean(qlike(cfg.scale * A.y(ia(okq)), hA(okq))) / mean(qlike(cfg.scale * A.y(ia(okq)), pA(okq)));
        pass = rhoH > 0.98 && rhoP > 0.98 && abs(rM - rA) < 0.05;
        T = [T; row("Aryan HAR/Persistence vs main pipeline", tg{1}, h, numel(d), ...
            sprintf('corr HAR %.4f, corr Persistence %.4f; QLIKE HAR/Persistence: main %.3f, Aryan %.3f', ...
            rhoH, rhoP, rM, rA), pass)]; %#ok<AGROW>
    end
end

outDir = fullfile(cfg.outDir, 'tables');
if ~isfolder(outDir), mkdir(outDir); end
writetable(T, fullfile(outDir, 'integration_check.csv'));
for i = 1:height(T)
    fprintf('%-5s %-40s %-3s %4s  n=%5d  %s\n', ternary(T.pass(i), 'PASS', 'FAIL'), T.check(i), T.target(i), ...
        ternary(isnan(T.h(i)), '', sprintf('h=%d', T.h(i))), T.n(i), T.detail(i));
end
fprintf('check_integration: %d of %d checks passed\n', sum(T.pass), height(T));
end

function [maxRel, nanMismatch] = compare(a, b)
both = ~isnan(a) & ~isnan(b);
maxRel = max([0; abs(a(both) - b(both)) ./ max(1, abs(b(both)))]);
nanMismatch = sum(xor(isnan(a), isnan(b)));
end

function r = row(check, target, h, n, detail, pass)
r = table(string(check), string(target), h, n, string(detail), logical(pass), ...
    'VariableNames', {'check','target','h','n','detail','pass'});
end

function out = ternary(c, a, b)
if c, out = a; else, out = b; end
end
