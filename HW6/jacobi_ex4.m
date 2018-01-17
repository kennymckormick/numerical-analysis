function m=jacobi_ex4(x)
m=zeros(3,3);
x1=x(1);x2=x(2);x3=x(3);
m(1,1)=sin(x1)/81.0-1;
m(1,2)=2*x2/9;
m(1,3)=cos(x3)/3;
m(2,1)=cos(x1)/3;
m(2,2)=-1;
m(2,3)=-sin(x3)/3;
m(3,1)=sin(x1)/9;
m(3,2)=1/3;
m(3,3)=cos(x3)/6-1;