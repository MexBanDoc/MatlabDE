function plot_stochastic_m2(a,b,c,h,eps,steps, name)
    m2=get_m2(a,b,c);
    trace=get_stochastic_trace(m2+0.001,a,b,c,h,eps,steps);
    h=figure();
    hold('on');
    plot(trace(:,1),trace(:,2), "LineWidth",1/5);
    plot(m2(1), m2(2), '.', 'MarkerSize', 20);
    hold('off');
    title(['Тректории стахостической системы с шумом ',num2str(eps)]);
    xlabel('x');
    ylabel('y');
    saveas(h, ['Images/',name]);
end

