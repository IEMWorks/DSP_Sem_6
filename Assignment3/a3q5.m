%% clear
clc 
clear all
close all

%% process
N=4;
t=0:.4:20;
w=-2*pi:.1:+2*pi;
y=heaviside(t);
y1=heaviside(t-4);
x=y-y1;
%z=0;
%for i=1:4
%    z=z+x(i)*exp(-j*w*(i-1))
%end
z=(sin(w*N/2))./(sin(w/2)).*(exp(-j*w*(N-1)/2));

%% plot
subplot(2,2,1);
stem(t,y,'m');
title('u[n]');
grid on;
subplot(2,2,2);
stem(t,y1,'m');
title('u[n-4]');
grid on;
subplot(2,2,3);
stem(t,x,'m');
ylim([-0.4 1.3])
xlim([-5 20])
title('u[n]-u[n-4]');
grid on;
subplot(2,2,4);
stem(w,z,'m');
title('DTFT(u[n]-u[n-4])');
grid on;