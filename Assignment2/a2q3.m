%% clear
clc 
clear all
close all

%% process
syms w n a

x1=(1/2)^n;
y1=simplify(ztrans(x1))
x2=exp(i*w*n);
y2=simplify(ztrans(x2))
x3=sin(w*n);
y3=simplify(ztrans(x3))
x4=a^n*cos(w*n);
y4=simplify(ztrans(x4))
