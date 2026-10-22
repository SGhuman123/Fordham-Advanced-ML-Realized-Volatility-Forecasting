function y = ffill_limit(x, maxGap)
%FFILL_LIMIT Carry the last observed value forward for at most maxGap rows.
%   Uses only past values, so it never looks ahead.
y = x;
last = NaN;  age = Inf;
for t = 1:numel(x)
    if ~isnan(x(t))
        last = x(t);  age = 0;
    else
        age = age + 1;
        if age <= maxGap, y(t) = last; end
    end
end
end
