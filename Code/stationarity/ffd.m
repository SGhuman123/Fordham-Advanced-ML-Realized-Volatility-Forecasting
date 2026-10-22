function [xf, w] = ffd(x, d, tau)
%FFD Fixed-width-window fractional differencing (Lopez de Prado, 2018, ch. 5;
%   proposal eq. 5). Weights w_0 = 1, w_k = -w_{k-1} (d - k + 1)/k are kept
%   while |w_k| >= tau, so every output uses the same window of l_tau + 1
%   sessions. xf(t) = sum_k w_k x(t-k) uses only current and past values, so
%   it never looks ahead. Rows whose window is incomplete or contains NaN are
%   NaN (proposal 3.2: a late-starting series has FFD values only from its
%   first date plus l_tau).
w = 1;  k = 1;
if d > 0
    while true
        wk = -w(end) * (d - k + 1) / k;
        if abs(wk) < tau, break; end
        w(end+1, 1) = wk; %#ok<AGROW>
        k = k + 1;
    end
end
w = w(:);
L = numel(w);
x = x(:);
xf = NaN(size(x));
if L == 1, xf = x; return; end
n = numel(x);
xf = w(1) * x;
for k = 2:L                          % explicit lag sum: a NaN only affects windows containing it
    xf(k:n) = xf(k:n) + w(k) * x(1:n-k+1);
end
xf(1:L-1) = NaN;
end
