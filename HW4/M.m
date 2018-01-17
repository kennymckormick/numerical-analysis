function [ans] = M(f,h,a,b)
i = a;
ans = 0;
while i <b
    ans=ans+h*f(i+0.5*h);
    i=i+h;
end

f = @(x)(4/(1+x^2));