function plot_stochastic_m2_stats(a,b,c,h,eps,steps,name)
plot_stochastic_m2(a,b,c,h,eps,steps, name);
plot_stochastic_coords(a,b,c,h,eps,steps,strcat('coords_',name));
end

