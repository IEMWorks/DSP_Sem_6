%% clear
clc
clear all
close all

%% process
x = [3, 4, -2, 0, 1, 4];
h = [1, -3, 0, 4];
s=max(length(x),length(h));
n=0:1:s-1;
x1=[zeros(1,(s-length(x))),x];
h1=[zeros(1,(s-length(h))),h];

cc = cconv(x1, h1, s);
lc = conv(x, h);
nl = 0:length(x)+length(h)-2;

%% plot
subplot(2,1,1);
stem(cc,n);
title('Circular conv');
grid on;
subplot(2,1,2);
stem(lc,nl);
title('Linear conv');
grid on;