%% clear
clc
clear all
close all

%% declare
a = -3;
n = (a-10):1:(a+10);
d = [zeros(1,10) ones(1,11)];

%% plot
stem(n, d);
grid on;
