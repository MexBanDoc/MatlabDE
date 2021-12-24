function s = stochastic_runge_kutta(xy,a,b,c,h,eps)
    s=runge_kutta(xy,a,b,c,h)+eps*(h^0.5)*[normrnd(0,1),normrnd(0,1)];
end

