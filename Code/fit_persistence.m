function M = fit_persistence(rv, h, cfg)
%FIT_PERSISTENCE Naive Persistence benchmark (proposal v5.4, eq. 6): the coming
%   h-day average equals the latest h-day average of realized variance, so for
%   h = 1 tomorrow's forecast is today's variance. Nothing is estimated. The
%   window average uses the observed days if at least cfg.lagMinFrac of it is
%   present; an origin whose own RV_t is missing gets no forecast (as for HAR).
avg = rollmean(rv, h, cfg.lagMinFrac);
avg(isnan(rv)) = NaN;
M.params  = struct('h', h);
M.predict = @perPredict;

    function [f, floored] = perPredict(rows)
        f = avg(rows);
        floored = false(size(f));
    end
end
