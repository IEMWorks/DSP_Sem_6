clc
clear all
close all
tf1=tf([1 -5+2i], 1);
tf2=tf([1 -1i+6], 1);
tf3=tf([1 0], 1);
tf4=tf([1 -1], 1);
tf5=tf([1 -1], 1);
t=((tf1*tf2)/(tf3*tf4*tf5));
pzmap(t)

