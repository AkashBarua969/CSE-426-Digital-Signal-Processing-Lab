clc;
clear all;
close all;

% Take input signals from the user
x = input('Enter the first signal x[n] as a vector (e.g., [1 2 3]): ');
h = input('Enter the second signal h[n] as a vector (e.g., [1 1 1]): ');

% Compute convolution using built-in conv() function
y = conv(x, h);

% Display result
disp('Convolution y[n] = ');
disp(y);

% Plot signals
figure;

subplot(3,1,1);
stem(x, 'filled');
title('Signal x[n]');
xlabel('n'); ylabel('x[n]');

subplot(3,1,2);
stem(h, 'filled');
title('Signal h[n]');
xlabel('n'); ylabel('h[n]');

subplot(3,1,3);
stem(y, 'filled');
title('Convolution y[n] = x[n] * h[n]');
xlabel('n'); ylabel('y[n]');
