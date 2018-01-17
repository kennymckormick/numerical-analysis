% adaptive method
function [ans] = romberg(f,a,b,h,k,way)
% f: integrate which function
% a: lower bound of integration
% b: upper bound of integration
% h: the step length of integration
% k: want to use step k of romberg formula
% way: use which formula in the adaptive method(for example: S,M,T,etc.)
% how to use it: like romberg(@(x)(4/(1+x*x)),0,1,0.01,3,@S)
if (k==1)
    ans=way(f,h,a,b);
else
    ans = romberg(f,a,b,h/2,k-1,way) - 4^(-k+1)*romberg(f,a,b,h,k-1,way);
    ans = ans/(1-4^(-k+1));
end