%% clear
clc
clear all
close all

%% process
x = input('Enter sequence x(n) : '); 
p = input('Enter position of n = 0 (leftmost is 1) : '); 
lx=length(x);
n1= -(p-1):1:(lx-p);
h = input('Enter sequence h(n) : ');
p = input('Enter position of n = 0  (leftmost is 1) : '); 
lh=length(h);
n2= -(p-1):1:(lh-p);
n3= (n1(1)+n2(1)) : 1 : (n1(lx)+n2(lh));
y = conv(x, h);

%% plot
subplot(3,1,1);
stem(n1,x);
subplot(3,1,2);
stem(n2,h);
subplot(3,1,3);
stem(n3,y);
y
