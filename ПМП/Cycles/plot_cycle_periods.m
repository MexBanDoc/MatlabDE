function plot_cycle_periods(a,c,b_min,b_max,steps)
    bs=linspace(b_min,b_max,steps);
    ts=[];
    h=0.001;
    h=figure();
    for b = bs
        cycle=get_m2_cycle(a,b,c,h,h,100);
        ts=[ts;length(cycle)*h];
    end
    plot(bs,ts);
    xlabel('b');
    ylabel('T');
    saveas(h,'Images/local_period.png');
end

