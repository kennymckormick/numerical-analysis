x0=[0.1,0.1,0.1]; 
[t,x]=ode45('grad4',[0,100],x0); 
subplot(2,2,1);
plot(x(:,1),x(:,3)) 
title('x-z')
subplot(2,2,2) 
plot(x(:,2),x(:,3)) 
title('y-z') 
subplot(2,2,3) 
plot(x(:,1),x(:,2)) 
title('x-y') 
subplot(2,2,4) 
plot3(x(:,1),x(:,2),x(:,3)) 
title('x-y-z')