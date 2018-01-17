x=zeros(100,3);
x(1,:)=[(1+sqrt(3))/2,(1-sqrt(3))/2,sqrt(3)];
y=zeros(100,1);
for i =2:100
    x(i,:)=x(i-1,:)-(inv(jacobi_ex5_1(x(i-1,:)))*(f_ex5_1(x(i-1,:))))';
    y(i) = sqrt(sum((x(i,:)-[5/3,-2/3,4/3]).^2));
end
y(1) = sqrt(sum((x(1,:)-[5/3,-2/3,4/3]).^2));
plot(1:100,log(y));
xlabel('#iter');
ylabel('log L2 error');