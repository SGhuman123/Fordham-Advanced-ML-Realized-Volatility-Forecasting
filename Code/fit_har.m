function M = fit_har(X, y, floorRV)
%FIT_HAR OLS HAR on the variance scale (Corsi, 2009; eq. 4).
%   X holds [RV_d RV_w RV_m]. Forecasts below floorRV, the training-window
%   minimum of daily RV, are floored at it (Christensen et al., 2023).
b = [ones(size(X,1),1) X] \ y;
M.b      = b;
M.fmin   = floorRV;
M.params = struct('b0', b(1), 'bd', b(2), 'bw', b(3), 'bm', b(4));
M.predict = @harPredict;

    function [f, floored] = harPredict(Xn)
        f = [ones(size(Xn,1),1) Xn] * b;
        floored = f < floorRV;
        f(floored) = floorRV;
    end
end
