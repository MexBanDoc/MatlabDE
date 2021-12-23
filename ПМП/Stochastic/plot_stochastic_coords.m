function plot_stochastic_coords(a,b,c,h,eps,steps)
%PLOT_STOCHASTIC_M2 Summary of this function goes here
%   Detailed explanation goes here
    m2=get_m2(a,b,c);
    trace=get_stochastic_trace(m2+0.001,a,b,c,h,eps,steps);
    t=linspace(0,steps*h,steps);
    labels=['x','y'];
    h=figure();
    for i=1:2
        subplot(2,1,i);
        hold('on');
        plot(t,trace(:,i));
        plot([t(1),t(length(t))], [trace(1,i),trace(1,i)]);
        title(['Временной ряд ',labels(i)]);
        xlabel('T');
        ylabel(labels(i));
        hold('off');
    end
    saveas(h,'Images/stochastic_node_coords.png');
end
