%% clear
clc
clear all
close all

%% inputs
a1 = input('Enter a1 : ');
a2 = input('Enter a2 : ');

%% declare
t = -10:0.01:10;
y1 = a1 * sin(pi / 4 + t);
y2 = a2 * cos(2 * pi / 7 + t);
y3 = y1 .* y2;

%% plot
plot(t, y1, 'r', t, y2, 'g', t, y3, 'b');