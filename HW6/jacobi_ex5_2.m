function m = jacobi_ex5_2(x)
x1=x(1);x2=x(2);
m=zeros(2,2);
m(1,1)=10^4*x2;
m(1,2)=10^4*x1;
m(2,1)=-exp(-x1);
m(2,2)=-exp(-x2);