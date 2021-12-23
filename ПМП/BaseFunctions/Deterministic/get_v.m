function v = get_v(xy,a,b,c)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    x = xy(1);
    y = xy(2);
    x_ = x - c * x * x - a * x * y / (1 + x);
    y_ = -y + b * x * y / (1 + x);
    v = [x_,y_];
end