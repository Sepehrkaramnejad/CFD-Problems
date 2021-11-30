clc
clear all
close all
alfa=11.234*10^-5
deltat=1           %Consider 1 time step
deltax=0.01
deltay=0.01
x=1:31
y=1:41
T(x,y)=0
T(:,1)=40
T(:,41)=10
T(1,:)=0
T(31,:)=0
for t=2:80
    for i=2:30
        for j=2:40
            T(i,j)=T(i,j)+alfa*deltat*((T(i+1,j)-2*T(i,j)+T(i-1,j))/deltax^2+(T(i,j+1)-2*T(i,j)+T(i,j-1))/deltay^2)
            if i==6 & t==10
                    T1(1,j)=T(i,j)  %T1=tempreture at x=0.05 and all y @t=10s
            end
                if i==6 & t==40
                    T2(1,j)=T(i,j)  %T2=temperature at x=0.05 and all y @t=40s
                end
                    if i==11 & j==6      % Temperature=(0.1,0.05)
                        T3(1)=0
                        T3(t)=T(11,6)
                        n=1:t
                        plot(n,T3)
                        xlabel('Time')
                        ylabel('Temperature')
                        legend('(0.1,0.3)','(0.1,0.05)','(0.15,0.1)')
                        hold on
                    end
            if i==16 & j==11        % Temperature=(0.15,0.1)
                T4(1)=0
                T4(t)=T(16,11)
                n=1:t
                plot(n,T4)
            end
                if i==11 & j==31      % Temperature=(0.1,0.3)
                    T5(1)=0
                    T5(t)=T(11,31)
                    n=1:t
                    plot(n,T5)
            end
        end
    end
end