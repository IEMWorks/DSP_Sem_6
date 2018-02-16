%% clear
clc
clear all
close all

%% declare
n = 0:1:49;
f = 0.03;
y = sin(2*pi*f*n);

%% plot
stem(n,y);