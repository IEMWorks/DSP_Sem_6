%% clear
clc
clear all
close all

%% process
y=0;
w=-2*pi:0.1:+2*pi;
for i=1:4
    y=y+exp(-j*w*(i-1))
end

%% plot
subplot(2,1,1);
plot(w, abs(y));
title('magnitude');
subplot(2,1,2);
plot(w, angle(y));
title('phase');