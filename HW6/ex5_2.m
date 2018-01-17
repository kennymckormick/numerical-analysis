x=zeros(100,2);
x(1,:)=[0,1];
y=zeros(100,1);
for i =2:100
    x(i,:)=x(i-1,:)-(inv(jacobi_ex5_2(x(i-1,:)))*(f_ex5_2(x(i-1,:))))';
end
for i = 1:99
    y(i) = sqrt(sum((x(i,:)-x(100,:)).^2));
end
plot(1:60,log(y(1:60)));
xlabel('#iter');
ylabel('log L2 error');