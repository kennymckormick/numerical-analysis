function y = f_ex4(x)
y=zeros(3,1);
y(1) = -cos(x(1))/81.0+x(2)^2/9.0+sin(x(3))/3.0;
y(2) = sin(x(1))/3.0+cos(x(3))/3.0;
y(3) = -cos(x(1))/9.0+x(2)/3.0+sin(x(3))/6.0;