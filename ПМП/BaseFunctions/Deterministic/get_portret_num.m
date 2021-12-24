function num = get_portret_num(discr,trA)
if discr < 0
    if abs(trA) < 1e-5
      num = 0;
    else
        if trA < 0
            num = -1;
        else
            num = -2;
        end
    end
else
    if abs(trA) < discr^0.5
        num = 1;
    else
        if trA < 0
            num = 2;
        else
            num = 3;
        end
    end
end
end

