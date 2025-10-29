clc;
close all;
clear all;

n = -10 : 10;
u = [zeros(1 , 10) 1 zeros(1,10)];
stem(n , u);
axis([-12 12 -1 2]);
grid on;
xlabel('Time Index');
ylabel('Amplitude');
title('Unit Sample Sequence');
