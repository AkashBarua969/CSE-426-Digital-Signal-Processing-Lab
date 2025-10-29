clc;
clear all;
close all;

n = 0 : 0.1 : 5;
a = input('Enter the value of a: ');
r = input('Enter the value of r: ');
x = a * (r .^ n);

plot(n , x);
xlabel('Time Index');
ylabel('Amplitude');
title('Exponential Signal');
