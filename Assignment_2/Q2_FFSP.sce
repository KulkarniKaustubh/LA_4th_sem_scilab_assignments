//Write a Sci-lab Program to find Four Fundamental Subspaces for any 3*3 matrix given as user input using input() function.
clear;close;
clc;
n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n
        A(i,j)=input("Enter element ")
    end
end
disp('The given matrix is ')
//A=[0 1 0;0 0 1;0 0 0];
disp(A,'A=');
[m,n]=size(A);
disp(m,'m=');
disp(n,'n=');
[v,pivot]=rref(A);
disp(rref(A));
disp(v);
r=length(pivot);
disp(r,'rank=')
cs=A(:,pivot);
disp(cs,'Column Space = ');
ns=kernel(A);
disp(ns,'Null Space = ');
rs=v(1:r,:)';
disp(rs,'Row Space = ')
lns=kernel(A');
disp(lns,'Left Null Space = ');
