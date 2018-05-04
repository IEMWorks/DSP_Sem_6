clc
clear all
close all
num=[0.5 -2 5]
den=[1 0 0]
n=0:1:100;
n1=0:1:105;
x1=sin(2*pi*0.62*n);
x2=[zeros(1,5) x1];
y1=filter(num,den,x2);
y2=filter(num,den,x1);
y3=[zeros(1,5) y2];
y4=y3-y1;

subplot(2,2,1);
stem(n1,y4);


subplot(2,2,2);
stem(n1,y3);
subplot(2,2,3);
stem(n1,y1);