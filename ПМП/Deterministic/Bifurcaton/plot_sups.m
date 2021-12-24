function plot_sups()
    a = 2;
    c = 0.1;
    b1 = c + 1;
    b2 = c / (2 * (2 ^ 0.5 - 1)) + 1;
    b3 = 2 / (1 - c) - 1;
    delta = 0.00001;
    cool_bs = [b1, b2, b3, b3 + 0.5];
    h=figure();
    for i = 2:length(cool_bs)
        s = cool_bs(i - 1) + delta;
        e = cool_bs(i) - delta;
        n = int8(1 + round((e - s) * 2e2));
        bs = linspace(s, e, n);

        [mins, points, maxs] = get_sups(a, bs, c, 20000);

        for k=1:2
            subplot(1,2,k);
            hold('on');
            plot(bs, mins(:,k));
            plot(bs, points(:,k), '--');
            plot(bs, maxs(:,k));
        end
    end
    hold("off");
    subplot(1,2,1);
    xlabel('b');
    ylabel('x');
    subplot(1,2,2);
    xlabel('b');
    ylabel('y');
    saveas(h, 'Images/sups.png');
end
