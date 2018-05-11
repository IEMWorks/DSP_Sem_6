%% clear
clc
clear all 
close all

%% process
x=input('Enter sequence x : ');
h=input('Enter sequence h : ');
s=max(length(x),length(h));
n=0:1:s-1;
x=[zeros(1,(s-length(x))), x];
h=[zeros(1,(s-length(h))), h];
y=h;
y=fliplr(y);
z=zeros(1,s);
for i=1:s
    % rotate by taking y(s) as first elemnet
    % adding y(1) to y(s-1) as last elements
    % y(1:(s-1)) is short for y(1) to y(s-1)
    y=[y(s) y(1:(s-1))];
    %for j=1:s
    %    z(i)=z(i)+(x(j)*y(j));
    %end
    z(i) = sum(x.*y);
end

%% plot
subplot(4,1,1);
stem(n,x);
title('x')
subplot(4,1,2);
stem(n,h);
title('h')
subplot(4,1,3);
stem(n,z);
title('Manual convolution')
m=cconv(x,h,s);
subplot(4,1,4);
stem(n,m);
title('Inbuilt function')


