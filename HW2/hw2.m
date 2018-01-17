% %2.3
% x=-5:1:5;
% y=1./(1+x.*x);
% x1 = -5:0.1:5;
% y1 = 1./(1+x1.*x1);
% y2 = zeros(101,1);
% for i = 1:10
%     for j = 1:11
%         y2(10*(i-1)+j) = (j-1)/10*y(i+1) + (11-j)/10*y(i);
%     end
% end
% for i = 1:101
%     y2(i) = y2(i) - y1(i);
% end
% plot(x1,y2);

%2.4
x=-5:1:5;
y=1./(1+x.*x);
yy=(-2.*x)./(1+x.^2).^2;
xd=-5:0.1:5;
yd=1./(1+xd.*xd);
yhp=zeros(101);
for i = 1:10
    x0 = x(i);
    x1 = x(i+1);
    y0 = y(i);
    y1 = y(i+1);
    fy0 = yy(i);
    fy1 = yy(i+1);
    for j = 1:11
        hpx=xd(10*(i-1)+j);
        yhp(10*(i-1)+j)= y0*a(hpx,x0,x1) + y1*a(hpx,x1,x0) + fy0*b(hpx,x0,x1)+fy1*b(hpx,x1,x0);
    end
end
for i =1:101
    yhp(i) = yhp(i) - yd(i);
end
plot(xd,yhp);
legend('hermite-f');