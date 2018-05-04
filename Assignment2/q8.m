clc
clear all
close all
syms z
a=5;
x=1/(1-a*z^(-1));
limit(x,z,inf)
