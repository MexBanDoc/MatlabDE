function types()
bs=linspace(1,1.5,200);
cs=linspace(0,0.5,200);
karta=zeros(length(bs),length(cs));
for i = 1:length(bs)
    for j = 1:length(cs)
        b=bs(i);
        c=cs(j);
        discr = get_discriminant(b, c, @get_m1_tr, @get_m1_det);
        trA = get_m1_tr(b, c);
        karta(j, i) = get_portret_num(discr, trA);
    end
end
h = pcolor(bs,cs,karta);
set(h, 'EdgeColor', 'none');
xlabel('b');
ylabel('c');
end

