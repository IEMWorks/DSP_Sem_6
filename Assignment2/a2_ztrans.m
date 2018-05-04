clc 
clear all
close all
syms w n
a=5;
x1=(1/2).^n;
y1=ztrans(x1)
x2=exp(i*w*n);
y2=ztrans(x2)
x3=sin(w*n);
y3=ztrans(x3)
x4=a^n*cos(w*n);
y4=ztrans(x4)
simplify(y1)
simplify(y2)
simplify(y3)
simplify(y4)
