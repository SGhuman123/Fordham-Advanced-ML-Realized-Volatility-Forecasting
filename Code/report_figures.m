function report_figures(outDir)
%REPORT_FIGURES Pipeline and walk-forward diagrams for the report, drawn in the
%   style of the proposal's Figures 1 and 2.
if nargin < 1
    cfg = rv_config();
    outDir = fullfile(cfg.root, 'Report', 'figures');
end
if ~isfolder(outDir), mkdir(outDir); end
navy  = [0.12 0.23 0.42];  pale = [0.91 0.93 0.96];  edge = [0.55 0.60 0.68];
note  = [0.95 0.95 0.96];  blue = [0.84 0.89 0.95];

% ---------------- Figure: pipeline ----------------
steps = {'1. Targets', 'Risk Lab SPY rv5 (main); VOLARE ES rv5 (second); h = 1, 5, 22', 'Daily variance; never filled';
         '2. Features: sets A-D', 'HAR lags \rightarrow + market \rightarrow + macro/stress \rightarrow + ES; NYSE calendar', 'Publication lags; ADF/KPSS; FFD if needed';
         '3. Benchmark and three models', 'Persistence and HAR on set A; elastic net and random forest on sets A-D', 'ML models nest HAR (raw lags kept)';
         '4. Walk-forward', 'Re-fit after each year-end; expanding window; label gap of h days', 'Tune on the last two years; d* per window';
         '5. Locked test: evaluate', '2018 - Oct 2026: QLIKE / MSE vs HAR and Persistence; DM, MCS; swap check', 'Development now; test run once';
         '6. Explain and diagnose', 'Coefficients, importance, Shapley, ALE; long memory; stationarity', 'Which inputs do the work'};
n = size(steps, 1);
fig = figure('Visible', 'off', 'Position', [100 100 1000 760], 'Color', 'w');
try, theme(fig, 'light'); catch, end
ax = axes(fig, 'Position', [0 0 1 1]);  axis(ax, [0 100 0 100]);  axis(ax, 'off');  hold(ax, 'on');
h = 12.5;  gap = 3.2;  top = 97;
for i = 1:n
    y = top - i*h - (i-1)*gap;
    fc = pale;  ec = edge;  lw = 1;
    if i == 5, fc = blue;  ec = navy;  lw = 2; end
    rectangle(ax, 'Position', [6 y 56 h], 'Curvature', 0.06, 'FaceColor', fc, 'EdgeColor', ec, 'LineWidth', lw);
    text(ax, 8, y + h*0.68, steps{i,1}, 'FontWeight', 'bold', 'FontSize', 13, 'Color', [0.1 0.1 0.1], 'Interpreter', 'tex');
    text(ax, 8, y + h*0.28, steps{i,2}, 'FontSize', 10, 'Color', [0.25 0.25 0.3], 'Interpreter', 'tex');
    rectangle(ax, 'Position', [68 y + 1.5 28 h - 3], 'Curvature', 0.08, 'FaceColor', note, 'EdgeColor', [0.8 0.8 0.82]);
    text(ax, 82, y + h/2, steps{i,3}, 'FontSize', 9.5, 'Color', [0.3 0.3 0.35], ...
        'HorizontalAlignment', 'center', 'Interpreter', 'none');
    plot(ax, [62 68], [y + h/2 y + h/2], '--', 'Color', [0.7 0.7 0.72]);
    if i < n
        plot(ax, 34, y - gap/2, 'v', 'MarkerSize', 6, 'MarkerFaceColor', edge, 'MarkerEdgeColor', edge);
    end
end
print(fig, fullfile(outDir, 'pipeline.png'), '-dpng', '-r200');
close(fig);

% ---------------- Figure: walk-forward design ----------------
fig = figure('Visible', 'off', 'Position', [100 100 1100 420], 'Color', 'w');
try, theme(fig, 'light'); catch, end
ax = axes(fig, 'Position', [0 0 1 1]);  axis(ax, [0 110 0 50]);  axis(ax, 'off');  hold(ax, 'on');
blk = {[2 24],  [0.90 0.91 0.93], [0.15 0.15 0.15], {'1996-2004', 'VIX-only check'};
       [27 70], [0.75 0.85 0.97], [0.15 0.15 0.15], {'2005-2017 development', '(ES and set D: 2010-2017)'};
       [73 108],navy,             [1 1 1],          {'2018 - Oct 2026', 'locked test'}};
for i = 1:3
    x = blk{i,1};
    rectangle(ax, 'Position', [x(1) 33 x(2)-x(1) 14], 'Curvature', 0.08, 'FaceColor', blk{i,2}, 'EdgeColor', 'none');
    text(ax, mean(x), 40, blk{i,4}, 'HorizontalAlignment', 'center', 'FontWeight', 'bold', ...
        'FontSize', 13, 'Color', blk{i,3});
end
folds = {'Fold k (development)', {'train to end of year k-1 (5+ years)', 'tune: fit to k-3, score k-2 and k-1', 'forecast year k'};
         'First test fold',      {'train to end of 2017', 'tune on 2015-2016', 'forecast 2018'};
         'Last test fold',       {'train to end of 2025', 'tune on 2023-2024', 'forecast 2026'}};
xs = [6 41 76];
for i = 1:3
    rectangle(ax, 'Position', [xs(i) 9 29 19], 'Curvature', 0.06, 'FaceColor', 'w', 'EdgeColor', navy, 'LineWidth', 1.5);
    text(ax, xs(i) + 14.5, 24, folds{i,1}, 'HorizontalAlignment', 'center', 'FontWeight', 'bold', 'FontSize', 12, 'Color', navy);
    text(ax, xs(i) + 14.5, 15.5, folds{i,2}, 'HorizontalAlignment', 'center', 'FontSize', 10.5, 'Color', [0.3 0.3 0.35]);
end
text(ax, 55, 3.5, 'After each year-end: drop the last h rows (label gap), tune on the last two years, re-fit, forecast the next year.', ...
    'HorizontalAlignment', 'center', 'FontAngle', 'italic', 'FontSize', 11, 'Color', [0.4 0.4 0.45]);
print(fig, fullfile(outDir, 'walkforward.png'), '-dpng', '-r200');
close(fig);
fprintf('report_figures: wrote pipeline.png and walkforward.png to %s\n', outDir);
end
