clc
clear all
close all

n = -10:1:10;
x = zeros(1,21);
i = length(-10:-5);
for j = -4:2
    i = i + 1
    x(i) = i+2;
end
for j = 3:10
    i = i + 1
    x(i) = i-2;
end

subplot(2,1,1);
stem(n,x);