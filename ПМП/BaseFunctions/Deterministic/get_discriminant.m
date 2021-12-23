function res = get_discriminant(b,c,get_tr,get_det)
%GET Summary of this function goes here
%   Detailed explanation goes here
    res=get_tr(b,c)^2-4*get_det(b,c);
end

