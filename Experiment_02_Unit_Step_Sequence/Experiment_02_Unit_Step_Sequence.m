clc;
close all;
clear all;

% Define time index
n = -10 : 10;

% Generate unit step sequence
u = [zeros(1,10) ones(1,11)];

% Plot the signal
stem(n, u);
axis([-12 12 -1 2]);
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Step Sequence');
