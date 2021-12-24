function plot_two_cycle_period()
%PLOT_TWO_CYCLE_PERIOD Summary of this function goes here
%   Detailed explanation goes here
% h=plot_cycle_periods(2,0.1,1.25,2,100);
% saveas(h,'Images/local_period.png');
l=plot_cycle_periods(2,0.1,1.25,3,200);
saveas(l,'Images/complete_period.png');
end

