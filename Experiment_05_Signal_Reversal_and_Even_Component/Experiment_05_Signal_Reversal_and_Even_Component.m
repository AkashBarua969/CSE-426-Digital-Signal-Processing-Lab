clc;
clear all;
close all;

% Input from user
n = input('Enter the range of n ');      % Time indices
x = input('Enter the signal values ');  % Signal values

% Compute reversed signal
x_rev = fliplr(x);         

% Compute even component
x_even = (x + x_rev) / 2;   

% Plot original signal
subplot(3,1,1);
stem(n, x, 'filled');
axis([-6 6 -3 3]);
title('Original Signal x[n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot reversed signal
subplot(3,1,2);
stem(n, x_rev, 'filled');
axis([-6 6 -3 3]);
title('Reversed Signal x[-n]');
xlabel('n');
ylabel('Amplitude');
grid on;

% Plot even component
subplot(3,1,3);
stem(n, x_even, 'filled');
axis([-6 6 -3 3]);
title('Even Signal x_e[n]');
xlabel('n');
ylabel('Amplitude');
grid on;
