% adaptive method
function [ans] = fitt(f,a,b,eps,way)
% f: integrate which function
% a: lower bound of integration
% b: upper bound of integration
% eps: want error of intergration lower than eps(eps should be reasonable and cannot be too small)
% way: use which formula in the adaptive method(for example: S,M,T,etc.)
% how to use it: like fitt(@(x)(4/(1+x*x)),0,1,10^-8,@S)
high = S(f,b-a,a,b);
low1 = S(f,(b-a)/2,a,(a+b)/2);
low2 = S(f,(b-a)/2,(a+b)/2,b);
if abs(low1+low2-high)<eps
   ans=high;
else
   ans=fitt(f,a,(a+b)/2,eps/2,way)+fitt(f,(a+b)/2,b,eps/2,way);
end