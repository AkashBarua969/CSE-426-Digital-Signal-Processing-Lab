clc;
clear all;
close all;

% Generate input values
x = 0:0.1:2*pi;

% Compute sine and cosine values
y = sin(x);
z = cos(x);

% Plot sine wave
subplot(2,1,1);
plot(x, y);
xlabel('Time');
ylabel('Amplitude');
title('Sine Wave');
grid on;

% Plot cosine wave
subplot(2,1,2);
plot(x, z);
xlabel('Time');
ylabel('Amplitude');
title('Cosine Wave');
grid on;
