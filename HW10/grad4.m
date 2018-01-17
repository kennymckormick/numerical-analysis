function dx=grad4(t,x)
dx=[-5*(x(1)-x(2));35*x(1)-x(2)-x(1)*x(3);x(1)*x(2)-8/3*x(3)];
end