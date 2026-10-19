function L = qlike(y, f)
%QLIKE Patton (2011) QLIKE loss, y/f - log(y/f) - 1, element-wise (eq. 7).
r = y ./ f;
L = r - log(r) - 1;
end
