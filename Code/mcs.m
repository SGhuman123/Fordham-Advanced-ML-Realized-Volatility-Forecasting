function [inSet, pval] = mcs(L, alpha, B, blockLen, seed)
%MCS Model Confidence Set (Hansen, Lunde & Nason, 2011), T_max statistic.
%   L is T x m (losses, rows = days, no NaN). Moving-block bootstrap with the
%   given block length. pval(i) is the MCS p-value of model i; inSet marks the
%   models with pval >= alpha.
[T, m] = size(L);
rng(seed, 'twister');
nb = ceil(T / blockLen);
Mb = zeros(B, m);                 % bootstrap column means
for b = 1:B
    starts = randi(T - blockLen + 1, nb, 1);
    idx = reshape(starts + (0:blockLen-1), [], 1);
    idx = idx(1:T);
    Mb(b, :) = mean(L(idx, :), 1);
end
mu = mean(L, 1);

alive = true(1, m);
pval  = zeros(1, m);
pmax  = 0;
while sum(alive) > 1
    a  = find(alive);
    di = mu(a) - mean(mu(a));                   % loss relative to the set average
    db = Mb(:, a) - mean(Mb(:, a), 2);
    v  = mean((db - di).^2, 1);
    t  = di ./ sqrt(v);
    Tmax  = max(t);
    TmaxB = max((db - di) ./ sqrt(v), [], 2);
    p = mean(TmaxB >= Tmax);
    pmax = max(pmax, p);
    [~, worst] = max(t);
    pval(a(worst)) = pmax;
    alive(a(worst)) = false;
end
pval(alive) = 1;
inSet = pval >= alpha;
end
