function padj = holm_adjust(p)
%HOLM_ADJUST Holm-Bonferroni adjusted p-values (step-down, FWER).
%   padj = holm_adjust(p): sort p ascending, multiply the i-th smallest by
%   (m-i+1), enforce monotonicity with a running max, cap at 1. Returns the
%   adjusted values in the original order and shape. NaNs are ignored (they
%   stay NaN and do not count toward m).
padj = nan(size(p));
ok = ~isnan(p(:));
q = p(ok);  q = q(:);
m = numel(q);
if m == 0, return; end
[qs, ord] = sort(q, 'ascend');
adj = min(1, cummax((m - (1:m)' + 1) .* qs));
out = zeros(m, 1);  out(ord) = adj;
tmp = padj(:);  tmp(ok) = out;
padj = reshape(tmp, size(p));
end
