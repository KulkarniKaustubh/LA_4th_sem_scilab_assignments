function gschmidt(A)
    [m,n] = size(A);
    for k = 1:n
        V(:,k)=A(:,k)
        for j = 1:k-1
            R(j,k) = V(:,j)' * A(:,k);
            V(:,k) = V(:,k) - R(j,k)*V(:,j);
        end
        R(k,k) = norm(V(:,k));
        V(:,k) = V(:,k)/R(k,k);
    end
    disp(V,'Q=');
endfunction

function eigen2(A)
    lam = poly(0,'lam')
    lam = lam
    charMat = A - lam*eye(3,3)
    disp(charMat,"Characteristic Matrix:")
    charPoly=poly(A,'lam')
    disp(charPoly,"Characteristic Polyomial:")
    lam=spec(A)
    disp(lam,"The Eigen Values:")
    [n,m] = size(A)
    x = []
    for k = 1:3
        B = A - lam(k)*eye(3,3);
        C = B(1:n-1,1:n-1);
        b = -B(1:n-1,n);
        y = C\b;
        y = [y;1];
        y = y/norm(y);
        x = [x y];
    end
    disp(x,"The Eigen Vectors:");
endfunction

function rayleigh(A)
    u0 = [1 1 1]';
    disp(0,'The initial vector');
    v = A*u0;
    a = max(u0);
    disp(a,'First approx.');
    while(abs(max(v)- a) > 0.002 )
        disp(v,"current eigen vector is");
        a = max(v);
        disp(a,"current eigen value is");
        u0 = v/max(v);
        v = A*u0;
    end
    format('v',4);
    disp(max(v),"The largest Eigen value is:");
    format('v',5);
    disp(u0,"Corresponding Eigen Vector");
endfunction

a = x_matrix("Enter matrix:",zeros(3,3));
disp(a,"a = ");
//Checking commit
//A = [3,-2,5;-2,3,6; 5,6,4];
//disp(A,'A=');
gschmidt(a);
eigen2(a);
rayleigh(a);
