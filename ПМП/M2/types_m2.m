function types_m2()
bs=linspace(1.001,1.4,1000);
cs=linspace(0.001,0.4,1000);
karta=zeros(length(bs),length(cs));
for i = 1:length(bs)
    for j = 1:length(cs)
        b=bs(i);
        c=cs(j);
        discr = get_discriminant(b, c, @get_m2_tr, @get_m2_det);
        trA = get_m2_tr(b, c);
        karta(j, i) = get_portret_num(discr, trA);
    end
end
figure();
h = pcolor(bs,cs,karta);
set(h, 'EdgeColor', 'none');
text(1.1, 0.25, 'седло','FontSize',8);   
text(1.3, 0.29, 'устойчивый узел','FontSize',8);
text(1.3, 0.18, 'устойчивый фокус','Color', 'white','FontSize',8); 
text(1.3, 0.05, 'неустойчивый фокус','Color', 'white','FontSize',8); 
text(1.055, 0.01, 'неустойчивый узел','FontSize',8); 
xlabel('b');
ylabel('c');
saveas(h,'m2_portret_types.png')
end

