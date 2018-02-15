clc
clear all
close all

a = -3;
n = (a-10):1:(a+10);
d = [zeros(1,10) ones(1,11)];
stem(n, d);

