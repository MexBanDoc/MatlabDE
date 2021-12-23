function plot_stochastic_cycle_coords(a,b,c,h,eps,steps)
%PLOT_STOCHASTIC_CYCLE_COORDS Summary of this function goes here
%   Detailed explanation goes here
    m2=get_m2(a,b,c);
    point= find_m2_cycle_point(m2,a,b,c,0.001,2000);
    cycle=get_trace(point,a,b,c,steps,h);
    stoc_cycle=get_stochastic_trace(point,a,b,c,h,eps,steps);
    t=linspace(0,steps*h,steps);
    labels=['x','y'];
    h=figure();
    for i=1:2
        subplot(2,1,i);
        hold('on');
        plot(t,stoc_cycle(:,i));
        plot(t, cycle(:,i));
        title(['Временной ряд ',labels(i)]);
        xlabel('T');
        ylabel(labels(i));
        hold('off');
    end
    saveas(h,'Images/stochastic_cycle_coords.png');
end

