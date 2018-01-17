function grad=funtcion(y)
grad=zeros(3,1);
grad(1)=-0.013*y(1)-1000*y(1)*y(2);
grad(2)=-2500*y(2)*y(3);
grad(3)=-0.013*y(1)-1000*y(1)*y(2)-2500*y(2)*y(3);
