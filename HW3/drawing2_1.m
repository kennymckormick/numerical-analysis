% drawing 1.1
A=zeros(3,3);
pi=acos(-1);
for i =1:3
    for j=1:3
        A(i,j)=1/(i+j-1);
    end
end

syms x;
Y=[int(sin(pi*x),0,1);int(x*sin(pi*x),0,1);int(x^2*sin(pi*x),0,1)];

X=inv(A)*Y;



x=0:0.01:1;
plot(x,X(1)+X(2).*x+X(3).*(x.*x)-sin(pi*x));

% plot least square approximation 