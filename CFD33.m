clc
clear all
close all
dx=0.0001 
dt=0.00002 
x=0:dx:.003 
t=0:dt:0.00632 
imax=length(x) 
tmax=length(t) 
T=zeros(imax,tmax) 
T(imax,:)=0 
T(2:imax-1,1)=0
for j=1:tmax
    T(1,j)=40*cos(1000*j*dt);
end
for j=1:tmax-1
    for i=2:imax-1
        T(i,j+1)=T(i,j)+((0.000217*dt)/((dx)^2)*(T(i+1,j)-2*T(i,j)+T(i-1,j))) ;
    end
end
