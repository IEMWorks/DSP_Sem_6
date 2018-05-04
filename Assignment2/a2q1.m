%% clear
clc;
clear all;
close all;

%% process
n = 0:49;
n1 = 0:52;
f1 = 0.02;
f2 = 0.04;
x1 = sin(2*pi*f1*n);
x2 = sin(2*pi*f2*n);
x3 = [zeros(1,3), x1];
x4 = x1 + x2;
y1(1) = 0;
y2(1) = 0;
y3(1) = 0;
y4(1) = 0;
for n = 2:50
    y1(n) = 0.2*y1(n-1)+0.3^x1(n);
    y2(n) = 0.2*y2(n-1)+0.3^x2(n);
    y3(n) = 0.2*y3(n-1)+0.3^x3(n);
    y4(n) = 0.2*y4(n-1)+0.3^x4(n);
end
y6(1) = 0;
for n1 = 2:53
    y6(n1) = 0.2^y6(n1-1)+0.3*x3(n1);
end
y7 = [zeros(1,3), y1];
y8 = y7 - y6;

%% plot
subplot(4, 2, 1);
stem(y3);
subplot(4, 2, 2);
stem(y4);
subplot(4, 2, 3);
%stem(y5);
subplot(4, 2, 4);
stem(y6);
subplot(4, 2, 5);
stem(y7);
subplot(4, 2, 6);
stem(y8);