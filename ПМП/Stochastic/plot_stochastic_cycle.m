function plot_stochastic_cycle(a,b,c,h,eps,steps)
%PLOT_STOCHASTIC_CYCLE Summary of this function goes here
%   Detailed explanation goes here
    m2=get_m2(a,b,c);
    point= find_m2_cycle_point(m2,a,b,c,0.001,2000);
    cycle=get_trace(point,a,b,c,steps,h);
    stoc_cycle=get_stochastic_trace(point,a,b,c,h,eps,steps);
    h=figure();
    hold('on');
    plot(stoc_cycle(:,1),stoc_cycle(:,2), 'LineWidth', 0.2);
    plot(cycle(:,1),cycle(:,2),'LineWidth', 1.5);
    hold('off');
    title(['Траектории стахостической системы с шумом ',num2str(eps)]);
    saveas(h,'stochastic_cycle_loud_2.png');
end

