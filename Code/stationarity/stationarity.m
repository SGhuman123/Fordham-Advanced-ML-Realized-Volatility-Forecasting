function T = stationarity(phase)
%STATIONARITY Unit-root and stationarity diagnostics (proposal v5.4, 4.3).
%   ADF (null: unit root) and KPSS (null: stationarity) on every target and
%   input, in levels and, for positive series, in logs, on the development
%   sample only: 2005-2017, and 2010-2017 for ES and set D. For each input the
%   table also gives d*, the smallest FFD order on the grid that passes ADF at
%   95% on the whole development sample, and rho, the correlation of the FFD
%   series with the original (memory retained). Inside the walk-forward d* is
%   re-chosen on every training window (walk_forward.m); this table is the
%   full-development-sample reference.
%   Output: Output/tables/<phase>/main/stationarity.csv

if nargin < 1, phase = 'dev'; end
cfg = rv_config();
P   = load_panel(cfg);
outDir = fullfile(cfg.outDir, 'tables', phase, 'main');
if ~isfolder(outDir), mkdir(outDir); end
devEnd = datetime(cfg.devLastYear, 12, 31);

Dz = build_design(P, make_spec('SPY', 'main'), cfg);
De = build_design(P, make_spec('ES', 'main'), cfg);

rows = {};
% targets
rows(end+1, :) = {'SPY RV (target)', 'target', Dz.rv, cfg.spyStart};
rows(end+1, :) = {'ES RV (target)',  'target', De.rv, cfg.esStart};
% inputs: every feature of sets A-D (SPY design; vrp uses SPY RV)
for j = 1:numel(Dz.names)
    g = Dz.group{j};
    if ~ismember(g, {'A','B','C','D'}), continue; end
    if ismember(Dz.names{j}, cfg.ffd.skip), continue; end
    st = cfg.spyStart;  if strcmp(g, 'D'), st = cfg.esStart; end
    rows(end+1, :) = {Dz.names{j}, ['set ' g], Dz.X(:, j), st}; %#ok<AGROW>
end

T = table();
for i = 1:size(rows, 1)
    x = rows{i, 3};
    sel = P.date >= rows{i, 4} & P.date <= devEnd;
    for tr = {'level', 'log'}
        if strcmp(tr{1}, 'log')
            if any(x(sel) <= 0) || startsWith(rows{i,1}, 'log_'), continue; end
            xx = log(x);
        else
            xx = x;
        end
        v = xx(sel);
        if sum(~isnan(v)) < 500, continue; end
        [ra, sa] = adf_test(v);
        [rk, sk] = kpss_test(v);
        if ra && ~rk,      verdict = "stationary";
        elseif ~ra && rk,  verdict = "unit root";
        elseif ra && rk,   verdict = "persistent (long memory)";
        else,              verdict = "inconclusive";
        end
        dstar = NaN;  rho = NaN;
        if strcmp(tr{1}, 'level') && ~strcmp(rows{i,2}, 'target') && ~strcmp(rows{i,2}, 'set A')
            [dstar, rho] = ffd_choose(xx, sel, cfg);
        end
        T = [T; table(string(rows{i,1}), string(rows{i,2}), string(tr{1}), sum(~isnan(v)), ...
            sa, ra, sk, rk, verdict, dstar, rho, ...
            'VariableNames', {'series','role','transform','T','ADF_stat','ADF_rejects_unit_root', ...
            'KPSS_stat','KPSS_rejects_stationarity','verdict','dstar_dev','rho_retained'})]; %#ok<AGROW>
    end
end
writetable(T, fullfile(outDir, 'stationarity.csv'));
fprintf('stationarity: %d tests written to stationarity.csv\n', height(T));
end
