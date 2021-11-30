clc
clear all
close all
n=input('Number Of Iteration=') ;
w=input('Relaxation=');
ilength=21 ;
jlength=41 ;
T=zeros(ilength,jlength,n) ; 
T(2:ilength-1,2:jlength-1,1)=0;%I.C
T(:,1,:)=100 ;%B.C
T(:,jlength,:)=0 ;%B.C
T(1,:,:)=0 ;%B.C
T(ilength,:,:)=0 ;%B.C
T(2:ilength-1,2:jlength-1,1)=0;%I.C
x=0:0.05:1 ;
y=0:0.05:2;
 for k=1:n-1;
    for i=2:ilength-1;
         for j=2:jlength-1;
        T(i,j,k+1)=(1-(w))*T(i,j,k)+0.25*w*(T(i+1,j,k)+T(i-1,j,k+1)+T(i,j+1,k)+T(i,j-1,k+1));
        h(i,j,k)=abs(T(i,j,k+1)-T(i,j,k));
         end
    end
        p=max(h);l=max(p);
              if l(1,1,k)>0.01
                  N=k+1;
              end
 end

surf(y,x,T(:,:,n));
disp('Number Of Iteration=')
disp(N)