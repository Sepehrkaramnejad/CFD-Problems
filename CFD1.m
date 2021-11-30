clc
clear all
close all
deltat=0.01
deltax=0.05
alfa=0.1
x=2:40
T(x)=100
i=2
for deltat=0.01:0.01:0.5 
for i=2:21
   T(1)=500
   T(41)=500 
   T(i)=T(i)+(alfa*deltat/(deltax^2))*(T(i+1)-2*T(i)+T(i-1))
   T(42-i)=T(42-i)+(alfa*deltat/(deltax^2))*(T(41-i)-2*T(42-i)+T(43-i))
end
end