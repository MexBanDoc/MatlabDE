function s = stochastic_runge_kutta(xy,a,b,c,h,eps)
%RAND_DXDY Summary of this function goes here
%   Detailed explanation goes here
    s=runge_kutta(xy,a,b,c,h)+eps*(h^0.5)*[normrnd(0,1),normrnd(0,1)];
end

