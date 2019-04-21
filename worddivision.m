function [p1,q1] = worddivision(s11)

envelope1 = imdilate((s11), true(1500, 1));
quietparts1 = envelope1 > 0.1;
figure;
plot(quietparts1);
o = length(quietparts1);
a = 1;
b = 1;

for g = 1:o-2
    if quietparts1(g) == 0 && quietparts1(g+1) == 1 && quietparts1(g+2) == 1
        p1(a) = g+1 ;
        a = a+1;
    end
    if quietparts1(g) == 1 && quietparts1(g+1) == 0 && quietparts1(g+2) == 0
        q1(b) =g;
        b = b+1;        
    end
end
h = length(p1);
figure;
subplot(h+1,1,1);plot(s11);
for j = 1:h
    xm = s11(p1(j):q1(j));
    subplot(h+1,1,j+1);
    plot(xm);

end

end