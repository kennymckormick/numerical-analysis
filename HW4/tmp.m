x = 1:1:10;
y = zeros(10,1);
y1 = zeros(10,1);
y2 = zeros(10,1);
for i = 1:10
    y(i) = romberg(@(x)(4/(1+x*x)),0,1,0.5,i,@T) - acos(-1);
    y2(i) = romberg(@(x)(4/(1+x*x)),0,1,0.01,i,@T) - acos(-1);
end
plot(x,log(abs(y)));
hold on;
plot(x,log(abs(y2)));
xlabel('k');
ylabel('log(abs(error))');
legend('h=0.5','h=0.01');