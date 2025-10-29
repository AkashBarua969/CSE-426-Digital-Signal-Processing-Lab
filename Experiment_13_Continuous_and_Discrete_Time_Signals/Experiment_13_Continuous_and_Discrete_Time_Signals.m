clc;
clear all;
close all;

%% ================================
%  Continuous-Time Signals
%  ================================

% Define continuous time variable
t = -5:0.01:5;   % time from -5 to 5 seconds with step size 0.01 (high resolution)

% Define continuous signals
x1 = sin(2*pi*1*t);      % Sine wave of 1 Hz
x2 = cos(2*pi*1*t);      % Cosine wave of 1 Hz
x3 = exp(-0.5*t);        % Exponential decay
x4 = t;                  % Ramp signal
x5 = (t >= 0);           % Unit step signal

% Plot continuous signals
figure('Name','Continuous-Time Signals');
subplot(3,2,1);
plot(t,x1,'LineWidth',1.5);
title('Continuous Sine Wave'); xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,2,2);
plot(t,x2,'LineWidth',1.5);
title('Continuous Cosine Wave'); xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,2,3);
plot(t,x3,'LineWidth',1.5);
title('Exponential Signal'); xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,2,4);
plot(t,x4,'LineWidth',1.5);
title('Ramp Signal'); xlabel('Time (s)'); ylabel('Amplitude'); grid on;

subplot(3,2,5);
plot(t,x5,'LineWidth',1.5);
title('Unit Step Signal'); xlabel('Time (s)'); ylabel('Amplitude'); grid on;

%% ================================
%  Discrete-Time Signals
%  ================================

% Define discrete time variable
n = -5:5;    % Discrete sample indices

% Define discrete signals
x1d = sin(0.2*pi*n);     % Discrete sine wave
x2d = cos(0.2*pi*n);     % Discrete cosine wave
x3d = (0.8).^n;          % Discrete exponential (decaying for n>0)
x4d = n;                 % Discrete ramp
x5d = (n >= 0);          % Discrete unit step

% Plot discrete signals
figure('Name','Discrete-Time Signals');
subplot(3,2,1);
stem(n,x1d,'filled');
title('Discrete Sine Wave'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,2,2);
stem(n,x2d,'filled');
title('Discrete Cosine Wave'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,2,3);
stem(n,x3d,'filled');
title('Discrete Exponential Signal'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,2,4);
stem(n,x4d,'filled');
title('Discrete Ramp Signal'); xlabel('n'); ylabel('Amplitude'); grid on;

subplot(3,2,5);
stem(n,x5d,'filled');
title('Discrete Unit Step Signal'); xlabel('n'); ylabel('Amplitude'); grid on;
