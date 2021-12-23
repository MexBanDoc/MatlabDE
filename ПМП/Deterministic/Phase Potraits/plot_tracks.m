function plot_tracks(start_points,a,b,c,steps)
%PLOT_TRACKS Summary of this function goes here
%   Detailed explanation goes here
for i=1:length(start_points)
    track=get_trace(start_points(i,:),a,b,c,steps,1e-3);
    plot_point(start_points(i,:))
    plot(track(:,1), track(:,2),'Linewidth', 1.5);
end
title(['a=',num2str(a),', b=',num2str(b),', c=',num2str(c)]);
xlabel('X coordinate');
ylabel('Y coordinate');

