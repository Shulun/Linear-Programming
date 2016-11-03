close all; clear all; clc;

%FLP
c = [0 0 0 0 1 1];
A = [1 2 2 -1 0 0; 2 1 2 0 -1 0; 2 2 1 0 0 -1; -1 0 0 0 0 0;...
    0 -1 0 0 0 0; 0 0 -1 0 0 0; 0 0 0 -1 0 0; 0 0 0 0 -1 0;...
    0 0 0 0 0 -1];
b = [20; 20; 20; 0; 0; 0; 0; 0; 0];

[x, fval, exitflag] = linprog(c, A, b)

x1 = rat(x)

%LP

c1 = [-10 -12 -12 0 0];
A1 = [1 2 2 0 0; 2 1 2 -1 0; 2 2 1 0 -1; -1 0 0 0 0;...
     0 -1 0 0 0; 0 0 -1 0 0; 0 0 0 -1 0; 0 0 0 0 -1];
b1 = [20; 20; 20; 0; 0; 0; 0; 0];

[x, fval, exitflag] = linprog(c1, A1, b1)

x2 = rat(x)