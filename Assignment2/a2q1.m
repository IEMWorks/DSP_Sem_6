%% clear
clc;
clear all;
close all;

%% define
n = 0:49;
f1 = 0.02;
f2 = 0.04;
a = 0.2;
b = 0.3;
x1 = sin(2*pi*f1*n);
x2 = sin(2*pi*f2*n);
x3 = a*x1 + b*x2;
x5 = [zeros(1, 10),  x1(1:length(x1)-10)];

%% process
y1(1) = 0;
y2(1) = 0;
y3(1) = 0;
y5(1) = 0;
for n = 2:50
    y1(n) = a*y1(n-1)+b*x1(n);
    y2(n) = a*y2(n-1)+b*x2(n);
    y3(n) = a*y3(n-1)+b*x3(n);
    y5(n) = a*y5(n-1)+b*x5(n);
end
y4 = a*y1+b*y2;
y6 = [zeros(1,10),  y1(1: length(y1)-10)];

%% plot
% x1 & x2
subplot(4, 2, 1);
stem(x1);
title('x1');
grid on;
subplot(4, 2, 2);
stem(x2);
title('x2');
grid on;

% y1 & y2
subplot(4, 2, 3);
stem(y1);
title('y1');
grid on;
subplot(4, 2, 4);
stem(y2);
title('y2');
grid on;

% for linearity
subplot(4, 2, 5);
stem(y3);
title('Response of (a*x1 + b*x2)');
grid on;
subplot(4, 2, 7);
stem(y4);
title('a*y1+b*y2');
grid on;

% for shift-invariance
subplot(4, 2, 6);
stem(y5);
title('Generated y(n-k) from x1, with 10 shifts');
grid on;
subplot(4, 2, 8);
stem(y6);
title('y(n-k) from y1, with 10 shifts');
grid on;