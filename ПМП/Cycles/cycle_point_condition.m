function flag = cycle_point_condition(m2,point1,point2)
    if (point1(1) > m2(1)) && (point2(1)>m2(1)) && ((m2(2)-point1(2))*(m2(2)-point2(2))<0)
        flag=1;
    else
        flag=0;
    end
end
