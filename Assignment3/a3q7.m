%% clear
clc
clear all
close all

%% process
x=input('Enter seq: ');
%x = [1, 1-2*j, -1, 1+2*j];
%x = [1,0,1,0];
N=4;
ns=0:N-1;
y=zeros(1,N);
for n=1:N
    for k=1:N
        y(n)=y(n)+x(k)*exp(1i*2*pi*(n-1)*(k-1)/N);
    end
    y(n)=y(n)/N;
end

%% plot
subplot(2,2,1)
stem(ns,y);
y2=ifft(x,N);
subplot(2,2,2)
stem(ns,y2)