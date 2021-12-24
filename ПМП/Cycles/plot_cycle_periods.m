function fig = plot_cycle_periods(a,c,b_min,b_max,steps)
%PLOT_CYCLE_PERIODS Summary of this function goes here
%   Detailed explanation goes here
    bs=linspace(b_min,b_max,steps);
    ts=[];
    h=0.001;
    fig=figure();
    for b = bs
        cycle=get_m2_cycle(a,b,c,h,h,500);
        ts=[ts;length(cycle)*h];
    end
    plot(bs,ts);
    xlabel('b');
    ylabel('T');
end

