clc
clear all
close all

y = [-2 -3 1 2 3 4 5 6];
n = -2:1:5;

subplot(2,1,1);
stem(-n, y)

k = 5;
subplot(2,1,2);
stem(n+k, y)