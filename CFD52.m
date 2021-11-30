clc
clear all
close all
n=input('Number Of Iteration=') 
w=input('Relaxation=')
x=0:0.2:6 ;
y=0:0.2:4;
S=zeros(21,31)
H=zeros(21,31);
S(:,1)=0 ;%left
S(1,1:6)=0 ;%down
S(1,7:31)=100 ;%down
S(21,:)=0 ;%up
S(2:20,2:30)=0;%Initial Condition
 for k=1:n-1;
    for i=2:21-1;
         for j=2:31;
             if j<31;
        S(i,j)=(1-(w))*S(i,j)+0.25*w*(S(i+1,j)+S(i-1,j)+S(i,j+1)+S(i,j-1));
             else
                  S(i,31)=(4*S(i,30)-S(i,29))/3;
             end 
              h(i,j)=abs(S(i,j)-S(i,j));
         end
    end
    a=S-H;
    b=max(a);
    c=max(b);
              if c<0.01
                  break
              end
              H=S;
 end
surf(x,y,S);
disp('Number Of Iteration=')
disp(k)