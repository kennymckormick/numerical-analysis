function []=compare()
f = @(x)(4/(1+x^2));
x=0:24;
pow=2.^(-x);
Sre=zeros(25,1);
Tre=zeros(25,1);
Mre=zeros(25,1);
for i = 1:25
    Sre(i)=S(f,pow(i),0,1);
    Tre(i)=T(f,pow(i),0,1);
    Mre(i)=M(f,pow(i),0,1);
end
plot(-log10(pow),log10(abs(Sre-acos(-1))));
xlabel('-log(h)');
ylabel('log(abs(error))');
hold on;
plot(-log10(pow),log10(abs(Tre-acos(-1))));
plot(-log10(pow),log10(abs(Mre-acos(-1))));
legend('Sre','Tre','Mre');