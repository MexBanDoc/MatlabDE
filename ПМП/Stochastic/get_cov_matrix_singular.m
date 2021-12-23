function [l1,l2] = get_cov_matrix_singular(stoch_trace)
%GET_COV_MATRIX_SINGULAR Summary of this function goes here
%   Detailed explanation goes here
xs = stoch_trace(:,1);
ys = stoch_trace(:,2);

xs = xs - mean(xs);
ys = ys - mean(ys);

a_11 = mean(xs .^ 2);
a_12 = mean(xs .* ys);
a_21 = a_12;
a_22 = mean(ys .^ 2);

tr = a_11 + a_22;
det = a_11 * a_22 - a_12 * a_21;
discr_2 = tr ^ 2 - 4 * det;
discr = discr_2 ^ 0.5;

l1 = (tr + discr) / 2;
l2 = (tr - discr) / 2;
end

