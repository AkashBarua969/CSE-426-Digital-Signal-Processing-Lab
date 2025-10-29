clc;
clear;
close all;

% Step 1: Take user input for signal and index
n = input('Enter the time indices (e.g., -2:2): ');
x = input('Enter the signal values (same length as indices): ');

% Step 2: Fold (time-reverse) the signal
x_folded = fliplr(x);       % reverses signal values
n_folded = -fliplr(n);      % reverses and negates indices

% Step 3: Plot the original signal
subplot(2,1,1);
stem(n, x, 'b', 'filled');
title('Original Signal x(n)');
xlabel('n');
ylabel('Amplitude');
grid on;

% Step 4: Plot the folded signal
subplot(2,1,2);
stem(n_folded, x_folded, 'r', 'filled');
title('Folded Signal x(-n)');
xlabel('n');
ylabel('Amplitude');
grid on;
