%% clear
clc
clear all
close all

%% process
num = [1, 4, 6, 4, 1];
den = [0.4866, 0, 0.0177];

w = 0:0.01:pi;
[h, w] = freqz(num, den, length(w));

n = 0:10;
yimp = impz(num, den, length(n));

%% plot
subplot(2,2,1);
zplane(num, den);
title('Pole zero map');
grid on;

subplot(2,2,2);
plot(w, abs(h));
title('Frequency response (real)');
grid on;

subplot(2,2,3);
stem(n, yimp);
title('Impulse response');
grid on;