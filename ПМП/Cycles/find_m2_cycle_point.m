function x_p_1 = find_m2_cycle_point(m2,a,b,c,eps,steps)
    x_p=go_one_round(m2,a,b,c,m2+[0.02,0]);
    for i=1:steps
        x_p_1=go_one_round(m2,a,b,c,x_p);
        if abs(x_p(1)-x_p(2)) < eps
            break
        else
            x_p=x_p_1;
        end
    end
end

