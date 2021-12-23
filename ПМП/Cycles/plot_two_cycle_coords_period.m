function plot_two_cycle_coords_period()
%PLOT_TWO_CYCLE_COORDS Summary of this function goes here
%   Detailed explanation goes here
h=plot_coords_periods(2,1.31,0.1);
saveas(h,'small_cycle.png');
l=plot_coords_periods(2,5,0.1);
saveas(l,'big_cycle.png');
end

