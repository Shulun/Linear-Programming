% Test2
close all; clear all; clc;

c = [1 1 0 0];
A = [1 1 1 0; -1 -1 0 1; 0 0 -1 0; 0 0 0 -1];
b = [2; -1; 0; 0];

[x, fval, exitflag] = linprog(c, A, b)