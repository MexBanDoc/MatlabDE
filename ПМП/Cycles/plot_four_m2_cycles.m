function plot_four_m2_cycles()
%PLOT_SOME_CYCLES Summary of this function goes here
%   Detailed explanation goes here
% % 
    a=2;
    bs=[1.222,1.222,1.5,1.5];
    cs=[0.08,0.09,0.08,0.09];
    h=figure();
    for i=1:4
        subplot(2,2,i);
        plot_m2_cycle(a,bs(i),cs(i));
        disp(i)
    end
    saveas(h,'Images/four_cycles.png');
end

