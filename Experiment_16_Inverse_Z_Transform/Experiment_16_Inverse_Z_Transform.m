clc;
clear all;
close all;

% Define symbolic variables
syms z n

% Take Z-transform expression as STRING
X_str = input('Enter the Z-transform X(z) (use z as the variable): ', 's');

% Convert string to symbolic expression
X = str2sym(X_str);

% Compute inverse Z-transform
x = iztrans(X, z, n);

% Display output
disp('Inverse Z-Transform x[n] = ');
disp(x);
