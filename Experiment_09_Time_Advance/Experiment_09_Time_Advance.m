clc;
close all;
clear all;

% Input for shift, time indices, and signal
n1 = input('Enter the required amount of shift: ');  
n = input('Enter time indices: ');                 
x = input('Enter the signal sequence: ');        

% Plot original signal
subplot(2,1,1);
stem(n, x);
xlabel('Time sample');
ylabel('Amplitude');
title('Original Signal');

% Compute advanced signal
m = n - n1;

% Plot advanced signal
subplot(2,1,2);
stem(m, x);
xlabel('Time sample');
ylabel('Amplitude');
title('Advanced Signal');
