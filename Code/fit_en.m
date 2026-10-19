function M = fit_en(X, y, sub, val, cfg, floorSub, floorRV)
%FIT_EN Elastic net (eq. 5) with alpha and lambda tuned on the validation years.
%   min (1/2N) sum (y - b0 - x'b)^2 + lambda * [alpha |b|_1 + (1-alpha)/2 |b|_2^2]
%   sub / val are logical masks over the training rows: every (alpha, lambda)
%   on the grid is fitted on sub, the pair with the lowest validation QLIKE is
%   kept, and the model is refitted on all training rows. alpha = 0 (ridge) is
%   solved in closed form because MATLAB's lasso needs alpha > 0; alpha = 1 is
%   the lasso. Predictors are standardized with training statistics only.
%   Forecasts below the training minimum of daily RV are floored at it.

[Zs, mu, sd] = standardize(X(sub,:));
Zv  = (X(val,:) - mu) ./ sd;
ys  = y(sub);
best = Inf;  alpha = cfg.en.alphas(end);  lambda = NaN;
for a = cfg.en.alphas
    if a == 0
        lam = ridge_grid(Zs, cfg.en.numLambda);
        [B, b0] = ridge_fit(Zs, ys, lam);
    else
        [B, FI] = lasso(Zs, ys, 'Alpha', a, 'NumLambda', cfg.en.numLambda, 'Standardize', false);
        b0 = FI.Intercept;  lam = FI.Lambda;
    end
    F = max(b0 + Zv * B, floorSub);
    q = mean(qlike(y(val), F), 1);
    [qm, j] = min(q);
    if qm < best
        best = qm;  alpha = a;  lambda = lam(j);
    end
end

[Z, mu, sd] = standardize(X);
if alpha == 0
    [b, b0] = ridge_fit(Z, y, lambda);
else
    [b, FI] = lasso(Z, y, 'Alpha', alpha, 'Lambda', lambda, 'Standardize', false);
    b0 = FI.Intercept;
end
M.fmin   = floorRV;
M.params = struct('alpha', alpha, 'lambda', lambda, 'valQlike', best);
M.coef   = b(:)';                 % coefficients on standardized predictors
M.predict = @enPredict;

    function [f, floored] = enPredict(Xn)
        f = b0 + ((Xn - mu) ./ sd) * b;
        floored = f < floorRV;
        f(floored) = floorRV;
    end
end

function lam = ridge_grid(Z, n)
% log-spaced lambdas from 1e-5 to 1e2 times the largest eigenvalue of Z'Z/N
e = max(eig(cov(Z, 1)));
lam = logspace(log10(e) - 5, log10(e) + 2, n);
end

function [B, b0] = ridge_fit(Z, y, lam)
% Ridge in lasso's scaling: (1/2N)|y - b0 - Zb|^2 + (lambda/2)|b|^2.
N  = size(Z, 1);
zc = Z - mean(Z, 1);  yc = y - mean(y);
G  = (zc' * zc) / N;
B = zeros(size(Z, 2), numel(lam));
for k = 1:numel(lam)
    B(:, k) = (G + lam(k) * eye(size(G))) \ (zc' * yc / N);
end
b0 = mean(y) - mean(Z, 1) * B;
end

function [Z, mu, sd] = standardize(X)
mu = mean(X, 1);
sd = std(X, 0, 1);
sd(sd == 0) = 1;
Z = (X - mu) ./ sd;
end
