clc;
clear all;
close all;

% Input from user
n = input('Enter the range of n  ');       % Time indices
x = input('Enter the signal values  ');   % Signal values

% Compute reversed signal
x_rev = fliplr(x);          

% Compute odd component
x_odd = (x - x_rev) / 2;     

% Plot original signal
subplot(3,1,1);
stem(n, x, 'filled');
axis([-12 12 -1 2]);
title('Original Signal x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot reversed signal
subplot(3,1,2);
stem(n, x_rev, 'filled');
axis([-12 12 -1 2]);
title('Reversed Signal x[-n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot odd component
subplot(3,1,3);
stem(n, x_odd, 'filled');
axis([-12 12 -1 2]);
title('Odd Signal x_o[n]');
xlabel('n');
ylabel('Amplitude');
grid on;
