function m = rollmean(x, w, minFrac)
%ROLLMEAN Trailing mean of x over rows t-w+1..t, ignoring NaN.
%   NaN when fewer than ceil(minFrac*w) values in the window are observed.
obs = ~isnan(x);
x0  = x;  x0(~obs) = 0;
s = movsum(x0, [w-1 0]);
c = movsum(double(obs), [w-1 0]);
m = s ./ c;
m(c < ceil(minFrac * w)) = NaN;
end
