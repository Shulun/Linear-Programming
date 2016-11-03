close all; clear all; clc;

c = [1 1 3 2];
A = [-1 3 2 1; 0 -5 -8 -3; -1 0 0 0; 0 -1 0 0;...
     0 0 -1 0; 0 0 0 -1; 0 1 0 0; 0 0 1 0; 0 0 0 1];
b = [0 -9 0 0 0 0 1 1 1]';
[x, fval, exitflag] = linprog(c, A, b)

% Node 1
b1 = [0 -9 0 0 0 0 0 1 1]';
[x, fval, exitflag] = linprog(c, A, b1)

% Node 3
b2 = [0 -9 0 0 0 0 0 1 0]';
[x, fval, exitflag] = linprog(c, A, b2)

% Node 4
b3 = [0 -9 0 0 0 -1 0 1 1]';
[x, fval, exitflag] = linprog(c, A, b3)

% Node 5 
b4 = [0 -9 0 0 -1 -1 0 1 1]';
[x, fval, exitflag] = linprog(c, A, b4)

% Node 6
b5 = [0 -9 0 0 0 -1 0 0 1]';
[x, fval, exitflag] = linprog(c, A, b5)

% Node 2
b6 = [0 -9 0 -1 0 0 1 1 1]';
[x, fval, exitflag] = linprog(c, A, b6)

% Node 7 
b7 = [0 -9 0 -1 0 0 1 0 1]';
[x, fval, exitflag] = linprog(c, A, b7)

% Node 8
b8 = [0 -9 0 -1 -1 0 1 1 1]';
[x, fval, exitflag] = linprog(c, A, b8)











