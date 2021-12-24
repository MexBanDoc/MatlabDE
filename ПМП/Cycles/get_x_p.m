function x_p = get_x_p(m2, point1, point2)
    v=point2-point1;
    dy=m2(2)-point1(2);
    x_p=point1+v*(dy/v(2));
end

