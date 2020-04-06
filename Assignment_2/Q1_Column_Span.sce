//Write a Sci-lab Program to span Column Space of any 3*3 matrix given as user input using input() function.
clc;clear;close;
n=3
disp("Enter elements for matrix A")
for i=1:n
    for j=1:n
        a(i,j)=input("Enter element ")
    end
end
disp('The given matrix is ')
disp(a)
//a=[1 2 3;4 5 6;7 8 9]
a(2,:)=a(2,:)-(a(2,1)/a(1,1))*a(1,:)
a(3,:)=a(3,:)-(a(3,1)/a(1,1))*a(1,:)
disp(a)
a(3,:)=a(3,:)-(a(3,2)/a(2,2))*a(2,:)
disp(a)
a(1,:)=a(1,:)/a(1,1)
a(2,:)=a(2,:)/a(2,2)
disp(a)
for i=1:n
    for j=i:n
        if(a(i,j)<>0)
            disp('is a pivot element',j,'column')
            break
        end
    end
end
