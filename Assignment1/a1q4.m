%% clear
clc
clear all
close all

%% declare
n = -40:.1:40;
x = cos(pi*n/3) + cos(3*pi*n/4);

%% plot
stem(n, x);

