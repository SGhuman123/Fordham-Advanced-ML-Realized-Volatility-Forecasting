function [reject, stat, cv] = adf_test(y, nLags)
%ADF_TEST Augmented Dickey-Fuller test with a constant (null: unit root).
%   dy_t = a + g*y_{t-1} + sum_i phi_i dy_{t-i} + e_t; stat = t-ratio of g.
%   reject = stat < cv, the 5% MacKinnon (2010) finite-sample critical value
%   for the constant-only case. Coded directly because adftest needs the
%   Econometrics Toolbox. NaNs are dropped, so y is treated as contiguous.
%   nLags defaults to floor(4 (T/100)^(1/4)) (Schwert, 1989).
y = y(~isnan(y));
y = y(:);
T = numel(y);
if nargin < 2 || isempty(nLags), nLags = floor(4 * (T / 100)^(1/4)); end
dy = diff(y);
n  = numel(dy) - nLags;
Y  = dy(nLags+1:end);
X  = [ones(n,1) y(nLags+1:end-1)];
for i = 1:nLags
    X = [X dy(nLags+1-i:end-i)]; %#ok<AGROW>
end
b = X \ Y;
e = Y - X*b;
s2 = (e'*e) / (n - size(X,2));
V  = s2 * inv(X'*X); %#ok<MINV>
stat = b(2) / sqrt(V(2,2));
cv = -2.86154 - 2.8903/T - 4.234/T^2;
reject = stat < cv;
end
