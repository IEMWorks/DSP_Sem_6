clc 
clear all
close all
syms z n;

x=z/z-5;
y=iztrans(x)
simplify(y)
y2=ztrans(5^n*y)
simplify(y2)
y3=(5^-1)*z/((5^-1*z)-5)
simplify(y3)
