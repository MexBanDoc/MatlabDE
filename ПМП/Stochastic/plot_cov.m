function plot_cov(n)
%PLOT_COV Summary of this function goes here
%   Detailed explanation goes here
a = 2;
c = 0.1;

b1 = c + 1;
b2 = 2/(1-c) - 1;

delta = 1e-3;
h=0.01;
eps=0.005;

bs = linspace(b1 + delta, b2 - delta, n);
l1s = zeros(1, n);
l2s = zeros(1, n);

for i=1:n
    b = bs(i);
    m2 = get_m2(a, b, c);
    stoch_trace = get_stochastic_trace(m2,a,b,c,h,eps,100000);
    [l1, l2] = get_cov_matrix_singular(stoch_trace);

    l1s(i) = l1;
    l2s(i) = l2;
end

hold on;
plot(bs, l1s);
plot(bs, l2s);

title(["Зависимость собсвенных чисел при шуме", num2str(eps)]);
xlabel('b');
ylabel('$\sigma_{1,2}$');

hold off;

end

