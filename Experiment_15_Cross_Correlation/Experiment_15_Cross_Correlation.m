clc;
clear all;
close all;

% Take input signals from the user
x = input('Enter the first signal x[n]  ');
y = input('Enter the second signal y[n]  ');

% Compute cross-correlation using built-in xcorr function
r = xcorr(x, y);

% Display result
disp('Cross-correlation r[n] = ');
disp(r);

% Plot the signals and cross-correlation
subplot(3,1,1);
stem(x, 'filled');
title('Signal x[n]');
xlabel('n'); ylabel('x[n]');
grid on;

subplot(3,1,2);
stem(y, 'filled');
title('Signal y[n]');
xlabel('n'); ylabel('y[n]');
grid on;

subplot(3,1,3);
stem(r, 'filled');
title('Cross-correlation r[n] = x[n] * y[n]');
xlabel('CrossCorrelation'); ylabel('r[n]');
grid on;
