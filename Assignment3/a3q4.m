%% clear 
clc
clear all
close all

%% process
N=4;
n1=0:1:3;
x=[0,1,2,3];
y=zeros(1,N);
for k=1:4
   for n=1:4
        y(k)=y(k) + x(n)*exp(-1j*2*pi*(n-1)*(k-1)/N);
   end
end

%% plot
subplot(2,1,1);
stem(n1,y,'m');
title('manual');
grid on;

y1=fft(x,4);
subplot(2,1,2);
stem(n1,y1,'m');
title('fft');
grid on;