close all; clear all; clc;

c = [0 -1 0 0 2.5 2.5 2.5 2.5];
A = [1 1 1 0 0 0 0 0; -1 0 0 0 0 0 0 0; 1 0 0 0 0 0 0 0; 0 -1 0 0 0 0 0 0;...
    0 0 -1 0 0 0 0 0; 0 0 0 -1 0 0 0 0; 0 0 0 0 -1 0 0 0; 0 0 0 0 0 -1 0 0;...
    0 0 0 0 0 0 -1 0; 0 0 0 0 0 0 0 -1; -1 -1 -1 0 0 0 0 0; 1 0.75 0 1 1 -1 0 0;...
    -1 -0.75 0 -1 -1 1 0 0; -3 1.25 0 1 0 0 1 -1; 3 -1.25 0 -1 0 0 -1 1];
b = [2; 1; 1; 0; 0; 0; 0; 0; 0; 0; -2; 2; -2; 2; -2];

[x, fval, exitflag] = linprog(c, A, b)