close all; clear all; clc;

% Question (b)
syms x1 x2 
fun = @(x1, x2) x1.^3 - x2.^3 - 2*x1.^2 - x1 + x2;

figure(2)
hold on
[x, y] = meshgrid(-1:.1:3, -1:.1:2);
[C, h] = contour(x, y, fun(x, y));
clabel(C, h)
plot(0, 1, '*r')
plot(1.5486, 0, '*r')
x_dummy = 0:.1:2;
y_dummy = 0:.1:1;
plot(x_dummy, 0*x_dummy, '-b')
plot(0*y_dummy, y_dummy, '-b')
plot(x_dummy, (1 - 1/2*x_dummy), '-b')
hold off

%figure(3)
%surf(x, y, fun(x,y))

fun1 = @(x) x(1)^3 - x(2)^3 - 2*x(1)^2 - x(1) + x(2);
[x0, fval] = fminunc(fun1, [0, 0.5]);

A = [1 2; -1 0; 0 -1];
b = [2 0 0]';
[x, fval, exitflag] = fmincon(fun1, x0, A, b);

syms a b c
S = solve(a + 2*b == 2, 3*a^2 - 4*a - 1 + c == 0, -3*b^2 + 1 + 2*c == 0);
double(S.a)
double(S.b)
double(S.c)

