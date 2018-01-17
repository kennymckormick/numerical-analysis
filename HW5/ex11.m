function []=ex11(m)
mat_k = zeros(2*m-1);
for i = 1:(2*m-1)
    for j = 1:(2*m-1)
        mat_k(i,j) = k((i-1)/(2*m-2),(j-1)/(2*m-2));
        if mod(j,2) == 0
            mat_k(i,j) = mat_k(i,j)*2/3;
        else
            if j==1 | j==(2*m-1)
                mat_k(i,j) = mat_k(i,j)/6;
            else
                mat_k(i,j) = mat_k(i,j)/3;
            end
        end
    end
end
mat_k = mat_k.*(1/(m-1));
cond(mat_k)
vec_f = zeros(2*m-1,1);
for i = 1:2*m-1
    vec_f(i) = f((i-1)/(2*m-2));
end
vec_u = pinv(mat_k)*vec_f;
vec_x = 0:1/(2*m-2):1;
plot(vec_x,vec_u);