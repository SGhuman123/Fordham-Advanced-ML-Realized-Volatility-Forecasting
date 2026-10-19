function M = fit_rf(X, y, sub, val, cfg, seed)
%FIT_RF Random forest (eq. 6) tuned by Bayesian optimization.
%   bayesopt searches the minimum leaf size and the number of predictors
%   sampled per split, scoring each candidate (fitted on sub with
%   cfg.rf.nTreesTune trees) by validation QLIKE. The final forest has
%   cfg.rf.nTrees trees grown on all training rows. A forest averages training
%   targets, so its forecasts are always positive and need no floor.
%   With cfg.rf.useDefaults the tuning is skipped and Breiman's defaults are
%   used (500 trees, leaf size 5, p/3 predictors per split), as in
%   Christensen, Siggaard & Veliyev (2023).

p = size(X, 2);
if cfg.rf.useDefaults
    leaf = 5;  mtry = max(1, floor(p / 3));  nTrees = 500;  valQ = NaN;
else
    fminSub = min(y(sub));
    Xs = X(sub,:);  ys = y(sub);  Xv = X(val,:);  yv = y(val);
    rng(seed, 'twister');
    vars = optimizableVariable('leaf', [1 cfg.rf.maxLeaf], 'Type', 'integer', 'Transform', 'log');
    if p > 1
        vars(2) = optimizableVariable('mtry', [1 p], 'Type', 'integer');
    end
    R = bayesopt(@val_loss, vars, 'MaxObjectiveEvaluations', cfg.rf.maxEvals, ...
        'IsObjectiveDeterministic', false, 'AcquisitionFunctionName', 'expected-improvement-plus', ...
        'Verbose', 0, 'PlotFcn', [], 'UseParallel', false);
    t = R.XAtMinEstimatedObjective;
    leaf = t.leaf;
    mtry = 1;  if p > 1, mtry = t.mtry; end
    nTrees = cfg.rf.nTrees;  valQ = R.MinEstimatedObjective;
end

rng(seed + 1, 'twister');
mdl = TreeBagger(nTrees, X, y, 'Method', 'regression', ...
    'MinLeafSize', leaf, 'NumPredictorsToSample', mtry);
M.params = struct('leaf', leaf, 'mtry', mtry, 'valQlike', valQ);
imp = mdl.DeltaCriterionDecisionSplit;          % impurity-based importance
M.importance = imp(:)' / max(sum(imp), eps);
M.predict = @rfPredict;

    function [f, floored] = rfPredict(Xn)
        f = predict(mdl, Xn);
        floored = false(size(f));
    end

    function q = val_loss(t)
        m = 1;  if p > 1, m = t.mtry; end
        fr = TreeBagger(cfg.rf.nTreesTune, Xs, ys, 'Method', 'regression', ...
            'MinLeafSize', t.leaf, 'NumPredictorsToSample', m);
        q = mean(qlike(yv, max(predict(fr, Xv), fminSub)));
    end
end
