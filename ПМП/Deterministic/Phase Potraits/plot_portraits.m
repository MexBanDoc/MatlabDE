function plot_portraits()
    a = 2;
    c= 0.1;
    bs=[1 + c / 2;
        1 + c;
        ((c + 1) + (c / (2 * (2 ^ 0.5 - 1)) + 1))/2;
        (c / (2 * (2 ^ 0.5 - 1)) + 1)*0.2+(2 / (1 - c) - 1)*0.8;
        2 / (1 - c) - 1;
        2 / (1 - c)];
    for i = 1:length(bs)
        plot_portrait(a,bs(i),c,i);
    end
    c=0.01;
    b=1.1;
    plot_portrait(a,b,c,length(bs)+1);
end

