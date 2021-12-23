function types_m1()
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
figure();
h = pcolor(bs,cs,karta);
text((min(bs) + 1.5 * max(bs))/3, max(cs)/2, 'устойчивый узел');   
text((min(bs) + 2 * max(bs))/3, max(cs)/2, 'седло','Color', 'white'); 
xlabel('b');
ylabel('c');
set(h, 'EdgeColor', 'none');
saveas(h,'Images/m1_portret_types.png')
end

