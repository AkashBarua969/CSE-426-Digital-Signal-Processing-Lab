clc;
close all;
clear all;

% Define time index
n = -10 : 10;

% Generate unit step sequence
u = [zeros(1 , 10)  ones(1,11)];

% Generate unit ramp sequence
r = n .* u;

% Plot the signal
stem(n , r);
axis([-12 12 -5 5]);
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Ramp Sequence');
