x=[1,1,1]';
y=zeros(50,1);
for i =1:50
    y(i)=sqrt(sum((x-[0,0.33333333333333333333333,0]').^2));
    fprintf('iter %d: with L2 error %1.60f\n',i,sqrt(sum((x-[0,0.33333333333333333333333,0]').^2)));
    x=f_ex4(x);
end
plot(1:50,log(y));
xlabel('#iter');
ylabel('log L2 error');
fprintf('next step');
% x=zeros(100,3);
% x(1,:)=[1,1,1];
% for i = 2:10
%     x(i,:)=x(i-1,:)-(pinv(jacobi_ex4(x(i-1,:)))*(f_ex4(x(i-1,:))-x(i-1,:)'))';
%     x(i,:)
%     y(i-1)=sqrt(sum((x(i-1,:)-[0,1/3,0]).^2));
% end
% plot(1:9,log(y(1:9)));
% xlabel('#iter');
% ylabel('log L2 error');