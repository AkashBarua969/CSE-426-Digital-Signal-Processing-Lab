clc;
clear all;
close all;

% Input for shift, time indices, and signal
n1 = input('Enter the required amount of shift: ');  
n = input('Enter time indices: ');                 
x = input('Enter the signal sequence: ');        

% Plot original signal
subplot(2,1,1);
stem(n, x);
axis([-6 6 -6 6]);
xlabel('Time sample');
ylabel('Amplitude');
title('Original Signal');
grid on;

% Compute delayed signal
m = n + n1;

% Plot delayed signal
subplot(2,1,2);
stem(m, x);
axis([-6 6 -6 6]);
xlabel('Time sample');
ylabel('Amplitude');
title('Delayed Signal');
grid on;
