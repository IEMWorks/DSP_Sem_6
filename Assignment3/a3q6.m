%% clear
clc
clear all
close all

%% process
N=input('Enter N: ');
n1=0:1:N-1;
x=[0,1,2,3,zeros(1,N-4)];
y=zeros(1,N);
for k=1:N
    for n=1:N
        y(k)=y(k)+x(n)*exp(-1i*2*pi*(n-1)*(k-1)/N);
    end
end

%% plot
subplot(2,1,1);
stem(n1,y);
title('manual');
y2=fft(x,N);
subplot(2,1,2);
stem(n1,y2);
title('fft');