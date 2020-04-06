//2.5.13 LU Decomposition of a matrix
n=input("Enter n value")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter elements for matrix A")
    end
end
U=A;
disp(A)
m=det (U ( 1,1) );
disp(m)
n=det (U (2,1) );
a=n/m;
U(2,:)=U(2,:)-U(1,:)/(m/n)
n=det(U(3,1));
b=n/m;
U(3,:)=U(3,:)-U(1,:)/(m/n)
m=det(U(2,2));
n=det(U(3,2));
c=n/m;
U(3,:)=U(3,:)-U(2,:)/(m/n)
disp(U,'upper triangular matrix')
L=[1 ,0 ,0; a ,1 ,0; b ,c ,1]
disp(L,'LOWER triangular matrix')
