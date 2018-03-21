%% clear
clc
clear all
close all

%% declare
n = -10:1:10;
x = zeros(1,21);
i = length(-10:-5);
for j = -4:2
    i = i + 1;
    x(i) = j+2;
end
for j = 3:10
    i = i + 1;
    x(i) = j-2;
end

y = [zeros(1,2) x(1, 1:19)];

%% plot
subplot(2,1,1);
stem(n,x);
grid on;

subplot(2,1,2);
stem(n,y);
grid on;