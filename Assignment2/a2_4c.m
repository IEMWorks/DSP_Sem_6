clc 
clear all
close all
syms z n;

x=z/z-5;
y=iztrans(x)
simplify(y)
y2=ztrans(n*y)
simplify(y2)
y3=-z*diff(z/(z-5))
simplify(y3)
