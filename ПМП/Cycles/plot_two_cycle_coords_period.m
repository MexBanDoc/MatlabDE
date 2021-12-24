function plot_two_cycle_coords_period()
    h=plot_coords_periods(2,1.31,0.1);
    saveas(h,'Images/small_cycle.png');
    l=plot_coords_periods(2,5,0.1);
    saveas(l,'Images/big_cycle.png');
end

