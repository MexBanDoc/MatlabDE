function points = get_stochastic_trace(point, a,b,c,h,eps,n)
    points=zeros(n,2);
    points(1,:)=point;
    for i = 1:n-1
        x=points(i,:);
        points(i+1,:)=stochastic_runge_kutta(x,a,b,c,h,eps);
    end
end

