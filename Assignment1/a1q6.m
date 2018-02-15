clc
clear all
close all

n = 0:1:40;
x = 12*exp(1i*4*n+pi*1i+pi/2) +9*exp(1i*3*pi*n+pi*1i/3);

y1 = real(x);
y2 = imag(x);
subplot(2,1,1);
stem(n,y1);
subplot(2,1,2);
stem(n,y2);
