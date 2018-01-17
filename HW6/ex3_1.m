x=zeros(100,2);
x(1,1)=-0.5;
x(1,2)=1.4;
for i = 2:20
    x(i,:)=x(i-1,:)-(pinv(jacobi(x(i-1,:)))*f(x(i-1,:)))';
    fprintf('iter %d with L2 error:%1.30e\n',i-1,sqrt(sum((x(i,:)-[0,1]).^2)));
end