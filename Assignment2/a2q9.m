clc
clear all
close all
syms z
a=5;
T=1;
x=z/(z-exp(-a*T));
limit(x*(z-1)/z,z,1)
