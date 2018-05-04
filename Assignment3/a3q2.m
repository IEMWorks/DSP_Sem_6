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
plot(w, abs(x));
title('magnitude');
subplot(2,1,2);
plot(w, angle(x));
title('phase');


