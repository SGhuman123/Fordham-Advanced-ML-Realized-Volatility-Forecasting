function padj = holm(p)
%HOLM Holm (1979) step-down adjusted p-values, family-wise error control.
%   The i-th smallest of m p-values is multiplied by m-i+1, capped at 1, and
%   the running maximum is kept so the adjusted values stay in the same order.
%   NaN entries are left out of the family and returned as NaN.
padj = NaN(size(p));
ok = ~isnan(p);
q = p(ok);
m = numel(q);
[qs, ord] = sort(q(:));
a = cummax(min(1, (m - (0:m-1)') .* qs));
qa = zeros(m, 1);
qa(ord) = a;
padj(ok) = qa;
end
