t = 100:100:6000;
u = zeros(60,1);
c = zeros(60,1);
for i = 1:60
    i
    tmp = metro(t(i));
    u(i) = tmp(1);
    c(i) = tmp(2);
end
plot(t,u);