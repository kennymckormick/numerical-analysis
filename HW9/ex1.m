num = 100000;
h = 1/num;
accx = 1:h:2;
accy = zeros(num+1,1);
accy(1) = -1;
for i = 2:num+1
    accy(i) = accy(i-1) + (-1/(accx(i-1)^2)-accy(i-1)/accx(i-1)-accy(i-1)^2)*h;
end
plot(accx,accy);
hold on;
num1 = 10;
h1 = 1/num1;
accx1 = 1:h1:2;
accy1 = zeros(num1+1,1);
accy1(1) = -1;
for i = 2:num1+1
    accy1(i) = accy1(i-1) + (-1/(accx1(i-1)^2)-accy1(i-1)/accx1(i-1)-accy1(i-1)^2)*h1;
end
plot(accx1,accy1);
hold on;
num1 = 10;
h1 = 1/num1;
accx1 = 1:h1:2;
accy1 = zeros(num1+1,1);
accy1(1) = -1;
for i = 2:num1+1
    tmp = accy1(i-1) + (-1/(accx1(i-1)^2)-accy1(i-1)/accx1(i-1)-accy1(i-1)^2)*h1;
    accy1(i) = accy1(i-1) + h1/2 * ((-1/(accx1(i-1)^2)-accy1(i-1)/accx1(i-1)-accy1(i-1)^2) + (-1/(accx1(i)^2)-tmp/accx1(i)-tmp^2)); 
end
plot(accx1,accy1);
hold on;
legend('true value','euler method, h=0.1','improved euler method. h=0.1');
for i = 1:10
    