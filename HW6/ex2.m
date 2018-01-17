x=zeros(21,1);
z=zeros(21,1);
x(1)=3;z(1)=3;
for i = 2:21
    x(i) = acos(-1/(1+exp(-2*x(i-1))));
    zz = z(i-1);
    z(i) = zz - (cos(zz)+1/(1+exp(-2*zz))) / (-sin(zz)+2.0/(1+exp(-2*zz))^2*exp(-2*zz));
end
for i = 1:20
    x(i)=x(i)-x(i+1);z(i)=z(i)-z(i+1);
end
plot(1:20,log(abs(x(1:20))));
xlabel('iterator');
ylabel('ln(abs(x_i-x_{i+1})))');
plot(1:20,log(abs(z(1:20))));
xlabel('iterator');
ylabel('ln(abs(x_i-x_{i+1})))');