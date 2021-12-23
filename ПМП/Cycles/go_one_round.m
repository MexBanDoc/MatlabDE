function x_p = go_one_round(m2,a,b,c,point)
%GO_ONE_ROUND Summary of this function goes here
%   Detailed explanation goes here
prev_point=point;
while 1
    curr_point = runge_kutta(prev_point,a,b,c,0.001);
    if cycle_point_condition(m2,curr_point,prev_point)
        x_p=get_x_p(m2,prev_point,curr_point);
        break
    else
        prev_point=curr_point;
    end
end

