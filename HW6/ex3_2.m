x=zeros(100,2);
x(1,1)=-0.5;
x(1,2)=1.4;
A = pinv(jacobi(x(1,:)));
x(2,:)=x(1,:)-(A*f(x(1,:)))';
for i = 2:20
    g=f(x(i,:))-f(x(i-1,:));
    y=x(i,:)-x(i-1,:);
    y=y';
    A=A-(A*g-y)*y'*A/(y'*A*g);
    x(i+1,:)=x(i,:)-(A*f(x(i,:)))';
    fprintf('iter %d with L2 error:%1.30e\n',i-1,sqrt(sum((x(i,:)-[0,1]).^2)));
   
end