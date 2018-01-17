function x = metro(t)
beta = 0.025852;
x = zeros(2,1);
beta = beta / 300 * t;
mat = zeros(10,10);
for i = 1:10
    for j = 1:10
        if rand > 0.5
            mat(i,j) = 1;
        else
            mat(i,j) = -1;
        end
    end
end
tot = 200000;
H = zeros(tot,1);
H2 = zeros(tot,1);
H(1) = energy(mat);
H2(1) = H(1)^2;
for i =2:tot
    x = unidrnd(10);
    y = unidrnd(10);
    mat(x,y) = -mat(x,y);
    tmpH = energy(mat);
    dH = tmpH - H(i-1);
    ub = min(1, exp(-beta* dH));
    if rand < ub
        H(i) = tmpH;
    else
        H(i) = H(i-1);
        mat(x,y) = -mat(x,y);
    end
    H2(i) = H(i)^2;
end
H = mean(H);
H2 = mean(H2);
u = 1/100*H;
c = beta^2/100*(H2-H^2);
x(1) = u;
x(2) = c;
    