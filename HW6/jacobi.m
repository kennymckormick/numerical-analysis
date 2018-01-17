function m=jacobi(x)
m=zeros(2,2);
m(1,1)=(x(2)^3-7);
m(1,2)=(x(1)+3)*3*x(2)^2;
m(2,1)=cos(x(2)*exp(x(1))-1)*x(2)*exp(x(1));
m(2,2)=cos(x(2)*exp(x(1))-1)*exp(x(1));