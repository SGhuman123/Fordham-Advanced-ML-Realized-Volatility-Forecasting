function y = lagk(x, k)
%LAGK Shift a column down by k rows (publication lag in trading days).
y = [NaN(k, 1); x(1:end-k)];
end
