clc
clear all
close all
x = [-2 -3 1 2 3 4 5 6]; 
lx=length(x);
n1= -2:1:5;
h = [-2 -3 1 2 3 4 5 6];
lh=length(h);
n2= 0:1:7;
n3= (n1(1)+n2(1)) : 1 : (n1(lx)+n2(lh));
l3= (lx+lh-1);
x1= [x zeros(1,l3-lx)];
h1= [h zeros(1,l3-lh)];
y=zeros(1,l3);
for i=1:l3
    for j=1:i
        y(i)=y(i)+ x1(j)* h1(i-j+1);
    end
end
subplot(3,1,1);
stem(n1,x);
subplot(3,1,2);
stem(n2,h);
subplot(3,1,3);
stem(n3,y);
y
