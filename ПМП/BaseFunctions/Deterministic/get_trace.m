function points = get_trace(xy,a,b,c,n,h)
    points = zeros(n,2);
    points(1,:) = xy;
    for i = 2:n
        points(i,:)=runge_kutta(points(i-1,:),a,b,c,h);
    end
end

