function plot_portrait(a,b,c,number)
%PLOT_PORTRAIT Summary of this function goes here
%   Detailed explanation goes here
    m0=[0,0];
    m1=get_m1(a,b,c);
    m2=get_m2(a,b,c);
    h = figure();
    hold('on');
    plot_tracks(get_common_start_points(),a,b,c,100000);
    plot(m0(1), m0(2), '.', 'MarkerSize', 10);
    text(m0(1)+0.1, m0(2)+0.1,'M_0');
    plot(m1(1), m1(2), '.', 'MarkerSize', 10);
    text(m1(1)+0.1, m1(2)+0.1,'M_1');    
     if m2(1) >= 0 && m2(2) >=0
         plot(m2(1), m2(2), '.', 'MarkerSize', 10);
         text(m2(1)+0.1, m2(2)+0.1,'M_2');
     end
    hold('off');
    saveas(h,['portret_',num2str(number),'.png'])
end

