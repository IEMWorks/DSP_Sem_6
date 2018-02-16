%% clear
clc
clear all
close all

%% declare
rates = [80, 400, 1000];
n{1} = []
x{1} = []
for i = 1:3
    n{i} = 0:1/rates(i):0.1;
    x{i} = sin(240*pi*n{i});
end

%% plot
for i = 1:3
    subplot(3,1,i);
    stem(n{i},x{i});
end