function [ans] = S(f,h,a,b)
i = a;
ans=0;
while i < b
    ans=ans+h*f(i)/6+4*h*f(i+h/2)/6+h*f(i+h)/6;
    i=i+h;
end