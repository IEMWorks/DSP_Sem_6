%% clear
clc
clear all
close all

%% process
n=-50:1:+50;
x=(sin(n-2.5))./(pi*(n-2.5));

%% plot
stem(n, abs(x));
title('signal');
