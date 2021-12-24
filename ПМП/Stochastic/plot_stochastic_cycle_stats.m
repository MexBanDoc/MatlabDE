function plot_stochastic_cycle_stats(a,b,c,h,eps,steps,name)
    plot_stochastic_cycle(a,b,c,h,eps,steps,name);
    plot_stochastic_cycle_coords(a,b,c,h,eps,steps,['coords_',name]);
end

