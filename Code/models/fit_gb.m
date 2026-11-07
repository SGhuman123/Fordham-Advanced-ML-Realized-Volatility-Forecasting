function M = fit_gb(X, y, sub, val, cfg, seed, floorSub, floorRV)
%FIT_GB Gradient-boosted regression trees (LSBoost), exploratory (Udler, Nov 2026).
%   Same interface and conventions as fit_rf: X are the walk-forward inputs
%   (FFD + train-only median imputation done in walk_forward; trees need no
%   standardization), y is the level-scale target (daily %^2), sub / val are
%   logical masks over the training rows (fit on targets ending by Y-3, score
%   origins in Y-2..Y-1).
%
%   Restrained grid (cfg.gb): MaxNumSplits x LearnRate x MinLeafSize. For each
%   candidate an LSBoost ensemble of cfg.gb.maxIter trees is fitted on sub, and
%   the number of trees is chosen by validation QLIKE of the staged forecasts
%   (checkpoints every cfg.gb.iterStep trees; forecasts floored at the sub-window
%   minimum of daily RV). No OptimizeHyperparameters, no k-fold CV: the split is
%   chronological only. The winning (splits, rate, leaf, trees) is refitted on
%   all training rows. Forecasts below floorRV, the training-window minimum of
%   daily RV, are floored at it (as HAR / EN), and the floor flag is returned.

Xs = X(sub,:);  ys = y(sub);  Xv = X(val,:);  yv = y(val);
nIter = cfg.gb.maxIter;
ks = unique([cfg.gb.iterStep:cfg.gb.iterStep:nIter, nIter]);

best = struct('valQlike', Inf, 'maxSplits', NaN, 'learnRate', NaN, 'minLeaf', NaN, 'nTrees', NaN);
for ms = cfg.gb.maxNumSplits
    for lr = cfg.gb.learnRate
        for lf = cfg.gb.minLeafSize
            rng(seed, 'twister');
            t = templateTree('MaxNumSplits', ms, 'MinLeafSize', lf, 'Surrogate', 'off');
            mdl = fitrensemble(Xs, ys, 'Method', 'LSBoost', 'Learners', t, ...
                'NumLearningCycles', nIter, 'LearnRate', lr);
            nT = mdl.NumTrained;
            for k = ks(ks <= nT)
                f = predict(mdl, Xv, 'Learners', 1:k);
                q = mean(qlike(yv, max(f, floorSub)));
                if q < best.valQlike
                    best = struct('valQlike', q, 'maxSplits', ms, 'learnRate', lr, ...
                        'minLeaf', lf, 'nTrees', k);
                end
            end
        end
    end
end
if ~isfinite(best.valQlike)
    error('fit_gb: no finite validation QLIKE on the grid');
end

rng(seed + 1, 'twister');
t = templateTree('MaxNumSplits', best.maxSplits, 'MinLeafSize', best.minLeaf, 'Surrogate', 'off');
mdl = fitrensemble(X, y, 'Method', 'LSBoost', 'Learners', t, ...
    'NumLearningCycles', best.nTrees, 'LearnRate', best.learnRate);
M.fmin   = floorRV;
M.params = best;
imp = predictorImportance(mdl);
M.importance = imp(:)' / max(sum(imp), eps);
M.predict = @gbPredict;

    function [f, floored] = gbPredict(Xn)
        f = predict(mdl, Xn);
        floored = f < floorRV;
        f(floored) = floorRV;
    end
end
