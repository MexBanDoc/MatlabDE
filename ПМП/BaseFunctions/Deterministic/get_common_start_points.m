function res = get_common_start_points()
%GET_COMMON_START_POINTS Summary of this function goes here
%   Detailed explanation goes here
res=[];
for i=3:5
    res=[res;[i,i]];
end
for i=[3,5,8]
    res=[res;[i,2]];
end
for i=8:9
    res=[res;[i,1]];
end
res=[res;[2, 0.5]];
res=[res;[11, 1]];
res=[res;[11, 0]];
res=[res;[8, 4]];
end

