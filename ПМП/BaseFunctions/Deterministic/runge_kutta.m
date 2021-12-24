function s = runge_kutta(xy,a,b,c,h)
    k_1 = h * get_v(xy,a,b,c);
    k_2 = h * get_v(xy + k_1 / 2,a,b,c);
    k_3 = h * get_v(xy + k_2 / 2,a,b,c);
    k_4 = h * get_v(xy + k_3,a,b,c);
    s = xy + (k_1 + 2*k_2 + 2*k_3 + k_4) / 6;
end