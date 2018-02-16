
%% not done
%% clear
clc
clear all
close all

%% declare
w = 10000000:100000000;
num = (1i*w - 5 + 2*1i) .* (1i*w + 6 - 1i);


%% plot
plot(w, num);