%% cler
clc 
clear all
close all   

%% process
n=-20:1:100;
num=[1 1];
den=[1 0.7];
y=[zeros(1,20) ones(1,1) zeros(1,100)];
y1=filter(num,den,y);
y2=[zeros(1,20) ones(1,101)];
y3=filter(num,den,y2);

%% plot
subplot(2,1,1);
stem(n,y1);
subplot(2,1,2);
stem(n,y3);