% Sampling an Analog Signal
clc;
clear;
close all;

% Step 1: Define continuous time signal
t = 0:0.001:1;                 % continuous time (high resolution)
f = 5;                         % frequency of analog signal (Hz)
x = sin(2*pi*f*t);             % analog signal (sine wave)

% Step 2: Define sampling parameters
fs = 20;                       % sampling frequency (Hz)
ts = 1/fs;                     % sampling time interval
n = 0:ts:1;                    % discrete time instants

% Step 3: Sample the signal
x_sampled = sin(2*pi*f*n);     % sampled signal values

% Step 4: Plot the signals
subplot(2,1,1);
plot(t, x, 'b', 'LineWidth', 1.5);
title('Original Analog Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;

subplot(2,1,2);
stem(n, x_sampled, 'r', 'filled');
hold on;
plot(t, x, 'b--');
title(['Sampled Signal (fs = ' num2str(fs) ' Hz)']);
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
