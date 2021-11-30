clc
clear all
close all
L=3
h=2
dx=0.05
U=zeros(61,41)
H=zeros(61,41)
mu=0.4
P=input('input pressure gradient=')
n=input('Number Of Iteration=')
for k=1:n
    for i=2:60
        for j=2:40
            U(i,j)=(U(i-1,j)+U(i+1,j)+U(i,j+1)+U(i,j-1)+dx^2)/4;
        end
    end
    a=U-H;
    b=max(a);
    c=max(b);
    if c<0.00001
       break 
    end
    H=U;
end
u=U.*L^2*(-P)/mu;
z=-1.5:0.05:1.5 ;
y=-1:0.05:1;
surf(y,z,u)
colormap cool
colorbar
disp('Number of iteration=')
disp(k)
