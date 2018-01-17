% drawing 2.2.5
points=-5:1:5;
ys=1./(1+points.*points);
A=zeros(11,11);
A(1,1)=2;A(11,11)=2;
A(1,2)=1;A(11,10)=1;
for i = 2:10
    A(i,i-1)=1/2;
    A(i,i+1)=1/2;
    A(i,i)=2;
end
us=zeros(11,1);
us(1)=3*(ys(2)-ys(1));
us(11)=3*(ys(11)-ys(10))
for i = 2:10
    us(i)=1.5*(-ys(i-1)+ys(i+1));
end
ms=inv(A)*us;
xs=-5:0.1:5;
approx=zeros(101,1);
for i = 1:10
    for j=1:11
        approx(10*(i-1)+j)=ys(i)*a(xs(10*(i-1)+j),points(i),points(i+1))+...
                            ys(i+1)*a(xs(10*(i-1)+j),points(i+1),points(i))+...
                            ms(i)*b(xs(10*(i-1)+j),points(i),points(i+1))+...
                            ms(i+1)*b(xs(10*(i-1)+j),points(i+1),points(i));
    end
end
for i = 1:101
    approx(i) = approx(i) - 1/(1+xs(i)^2);
end
plot(xs,approx);