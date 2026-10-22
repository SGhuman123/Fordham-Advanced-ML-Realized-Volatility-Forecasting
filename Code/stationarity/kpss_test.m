function [reject, stat, cv] = kpss_test(y, nLags)
%KPSS_TEST Kwiatkowski-Phillips-Schmidt-Shin test of level stationarity
%   (null: stationary). stat = sum S_t^2 / (T^2 * lrv), with S_t the partial
%   sums of y - mean(y) and lrv a Bartlett (Newey-West) long-run variance.
%   reject = stat > 0.463, the 5% critical value of Kwiatkowski et al. (1992).
%   Coded directly because kpsstest needs the Econometrics Toolbox.
%   nLags defaults to floor(4 (T/100)^(1/4)).
y = y(~isnan(y));
e = y(:) - mean(y);
T = numel(e);
if nargin < 2 || isempty(nLags), nLags = floor(4 * (T / 100)^(1/4)); end
S = cumsum(e);
lrv = (e'*e) / T;
for k = 1:nLags
    lrv = lrv + 2 * (1 - k/(nLags+1)) * (e(1+k:end)' * e(1:end-k)) / T;
end
stat = sum(S.^2) / (T^2 * lrv);
cv = 0.463;
reject = stat > cv;
end
