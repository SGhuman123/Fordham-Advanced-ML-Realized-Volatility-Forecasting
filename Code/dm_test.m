function [stat, p2, p1, dbar] = dm_test(d, h)
%DM_TEST Diebold-Mariano test on a loss-differential series d, with a
%   Newey-West (Bartlett) long-run variance and the Harvey-Leybourne-Newbold
%   small-sample correction; p-values from Student t with T-1 df.
%   stat > 0 means mean(d) > 0.  p2: two-sided.  p1: one-sided, H1: mean(d) > 0.
%   Bandwidth max(ceil(1.5h), 4(T/100)^(2/9)) covers the h-1 overlap of
%   multi-day targets.
d = d(~isnan(d));
T = numel(d);
dbar = mean(d);
L = max(ceil(1.5 * h), floor(4 * (T / 100)^(2/9)));
L = min(L, T - 1);
e = d - dbar;
lrv = (e' * e) / T;
for k = 1:L
    lrv = lrv + 2 * (1 - k / (L + 1)) * (e(1+k:end)' * e(1:end-k)) / T;
end
if lrv <= 0, lrv = (e' * e) / T; end
hln  = sqrt((T + 1 - 2*h + h*(h - 1)/T) / T);
stat = hln * dbar / sqrt(lrv / T);
p2 = 2 * tcdf(-abs(stat), T - 1);
p1 = tcdf(-stat, T - 1);
end
