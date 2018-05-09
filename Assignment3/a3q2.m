%% clear
clc
clear all
close all

%% process
a=0.5;
w=-2*pi:0.1:+2*pi;
x=1./(1-a*exp(-j*w));

%% plot
subplot(2,1,1);
plot(w, abs(x),'m');
title('magnitude');
grid on;
subplot(2,1,2);
plot(w, angle(x),'m');
title('phase');
grid on;