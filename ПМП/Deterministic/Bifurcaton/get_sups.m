function [mins, points, maxs] = get_sups(a, bs, c, steps)
%GET_SUPS Summary of this function goes here
%   Detailed explanation goes here
mins = zeros(length(bs),2);
points = zeros(length(bs),2);
maxs = zeros(length(bs),2);

for i=1:length(bs)
    b = bs(i);
    m2 = get_m2(a, b, c);
    track = get_trace(m2 + 0.01, a, b, c, steps, 1e-2);
    
    xs = track(end - fix(steps / 2):end,1);
    ys = track(end - fix(steps / 2):end,2);
    
    mins(i,:) = [min(xs), min(ys)];
    points(i,:) = m2;
    maxs(i,:) = [max(xs), max(ys)];
end
end

