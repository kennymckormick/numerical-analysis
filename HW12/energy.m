function e=energy(mat)
e = 0;
for i = 1:10
    for j = 1:10
        ni = i+1;
        if ni>10
            ni = 1;
        end
        nj = j+1;
        if nj>10
            nj = 1;
        end
        e = e + mat(i,j)*mat(ni,j) + mat(i,j)*mat(i,nj);
    end
end
e = -e;