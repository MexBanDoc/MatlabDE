function points = get_m2_cycle(a,b,c,eps,h,steps)
    m2=get_m2(a,b,c);
    point=find_m2_cycle_point(m2,a,b,c,eps,steps);
    points=[point(1),point(2)];
    prev_point=point;
    while 1
        curr_point=runge_kutta(prev_point,a,b,c,h);
        points=[points;curr_point];
        if cycle_point_condition(m2,curr_point,prev_point)
            break
        else
            prev_point=curr_point;
        end
    end
end

