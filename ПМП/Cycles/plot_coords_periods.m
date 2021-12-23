function fig = plot_coords_periods(a,b,c)
%PLOT_PERIODS Summary of this function goes here
%   Detailed explanation goes here
    h=1e-3;
    cycle=get_m2_cycle(a,b,c,h,h,1000);
    t=linspace(0, length(cycle)*h, length(cycle));
    fig=figure();
    hold('on');
    plot(t,cycle(:,1),'DisplayName','x','LineWidth',1.5);
    plot(t,cycle(:,2),'DisplayName','y','LineWidth',1.5);
    hold('off');
    title(['b=',num2str(b)]);
    xlabel('T');
    ylabel('Coordinates');
%     legend('Location','northwest');
    legend('show');
end

