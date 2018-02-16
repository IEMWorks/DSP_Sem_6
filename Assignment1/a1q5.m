%% clear
clc
clear all
close all

%% declare
y = [-2 -3 1 2 3 4 5 6];
n = -2:1:5;
k = 5;

%% plot
subplot(2,1,1);
stem(-n, y)

subplot(2,1,2);
stem(n+k, y)