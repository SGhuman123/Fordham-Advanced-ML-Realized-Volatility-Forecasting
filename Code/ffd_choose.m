function [dstar, rho] = ffd_choose(x, trainRows, cfg)
%FFD_CHOOSE Smallest d on the grid whose FFD series passes the ADF test at 95%
%   on the training rows only (proposal eq. 5). Returns d* and rho, the
%   correlation between the FFD series and the original on those rows (the
%   memory retained). d* = 0 means the input is left unchanged.
dstar = NaN;  rho = NaN;
for d = cfg.ffd.grid
    xf = ffd(x, d, cfg.ffd.tau);
    v = xf(trainRows);
    if sum(~isnan(v)) < 252, continue; end
    if adf_test(v)
        dstar = d;
        ok = trainRows & ~isnan(xf) & ~isnan(x);
        rho = corr(xf(ok), x(ok));
        return
    end
end
end
