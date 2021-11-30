clc
clear
p=input('dp/dx= ')
dx=0.001 
dt=0.002 
x=0:dx:0.04 
t=0:dt:1.08 
imax=length(x) 
tmax=length(t) 
G=(p*dt)/800
T=zeros(imax,tmax) 
T(1,1:tmax)=0
T(imax,1:tmax)=40 
T(2:imax-1,1)=0
for j=1:tmax-1
    for i=2:imax-1
        T(i,j+1)=T(i,j)+(((0.000217*dt)/((dx)^2))*(T(i+1,j)-2*T(i,j)+T(i-1,j)))-G;
    end
end
