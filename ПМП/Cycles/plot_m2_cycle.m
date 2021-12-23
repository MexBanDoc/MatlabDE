function [] = plot_m2_cycle(a,b,c)
%PLOT_M2_CYCLE Summary of this function goes here
%   Detailed explanation goes here
    m2=get_m2(a,b,c);
    cycle=get_m2_cycle(a,b,c,1e-3,0.001,1000);
    hold('on');
    plot(m2(1), m2(2), '.', 'MarkerSize', 10);
    plot(cycle(1,1), cycle(1,2), '.', 'MarkerSize', 10);
    plot(cycle(:,1),cycle(:,2),'Linewidth', 1.5);  
    hold('off');
    title(['a=',num2str(a),', b=',num2str(b),', c=',num2str(c)]);
    xlabel('X coordinate');
    ylabel('Y coordinate');
end

