close all; clear all; clc;

c = [-2 -1];
A = [1 8/3; 1 1; 2 0; -1 0; 0 -1];
b = [4; 2; 3; 0; 0];

x = linprog(c, A, b)

[x, fval, exitflag] = linprog(c, A, b)