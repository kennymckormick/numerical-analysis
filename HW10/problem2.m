h=0.01;
t=0:h:0.02;
n=length(t);
y1=zeros(n,1);y2=zeros(n,1);y3=zeros(n,1);
y1(1)=1;y2(1)=1;y3(1)=0;
for i = 1:n-1
    y0=[y1(i) y2(i) y3(i)];
    k1=grad2(y0);
    k2=grad2(y0+0.5*h*k1);
    k3=grad2(y0+0.5*h*k2);
    k4=grad2(y0+h*k3);
    ans=y0+h/6*(k1+k2+k2+k3+k3+k4);
    y1(i+1)=ans(1);
    y2(i+1)=ans(2);
    y3(i+1)=ans(3);
end
plot(t,y1);
hold on;
plot(t,y2);
hold on;
plot(t,y3);
legend('y1','y2','y3');