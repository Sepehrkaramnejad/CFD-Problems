clc
clear all
close all
T1=40            % hale tahlili masale 3.5
T3=10
W=0.4
L=0.3
TA1=0
TB1=0
for x=1:29
   for y= 1:39
      for m=1:50
         TA=T1*2*(((1-cos(m*pi))/(m*pi))*((sinh((m*pi*(W-y)*0.01)/L))/(sinh(m*pi*W/L)))*sin(m*pi*x*0.01/L))
         TB=T3*2*(((1-cos(m*pi))/(m*pi))*((sinh((m*pi*y*0.01)/L))/(sinh(m*pi*W/L)))*sin(m*pi*x*0.01/L))
         TA1=TA+TA1
         TB1=TB+TB1
      end
      T(x,y)=TA1+TB1
   end
end