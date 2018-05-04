clc
clear all
close all
n=0:1:99;
f1=0.05;
f2=0.03;
x1=sin(2*pi*f1*n);
x2=sin(2*pi*f2*n);
a=2;
b=3;
x3=(a*x1+b*x2);
y1=filter([.5 -2 5],[1],a*x1);
y2=filter([.5 -2 5],[1],b*x2);
y3=filter([.5 -2 5],[1],x3);
subplot(2,2,1);
stem(n,y3);

y4=y1+y2;
y5=y4-y3;

subplot(2,2,2);
stem(n,y4);
subplot(2,2,3);
stem(n,y5);