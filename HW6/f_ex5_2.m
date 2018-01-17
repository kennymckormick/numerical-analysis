function y = f_ex5_2(x)
y=zeros(2,1);
y(1)=10^4*x(1)*x(2)-1;
y(2)=exp(-x(1))+exp(-x(2))-1.0001;
