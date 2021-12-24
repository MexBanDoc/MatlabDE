function res = get_discriminant(b,c,get_tr,get_det)
    res=get_tr(b,c)^2-4*get_det(b,c);
end

