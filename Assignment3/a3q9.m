%% clear
clc
clear all
close all

%% process
x=input('Enter seq x : ');
h=input('Enter seq h : ');
s=max(length(x),length(h));
n=0:1:s-1;
x=[zeros(1,(s-length(x))),x];
h=[zeros(1,(s-length(h))),h];
m=fft(x,s);
m1=fft(h,s);
c = ifft((m.*m1),s);
cd = cconv(x,h,s);

%% plot
subplot(2, 1, 1);
stem(n, c);
title('Using fourier transform method');
grid on;
subplot(2, 1, 2);
stem(n, cd);
title('Using inbuild function');
grid on;