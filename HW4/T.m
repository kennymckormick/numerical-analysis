function [ans] = T(f,h,a,b)
i = a;
ans =0;
while i < b
    ans=ans+f(i)*h/2+f(i+h)*h/2;
    i=i+h;
end