close all; clear all; clc;

format short
syms x1 x2
f = @(x1, x2) 5*(x1 - 2)^4 + 3*(x2 - 5)^4 - x1*x2;
x1_1st = diff(f, x1);
x2_1st = diff(f, x2);
x1_2nd = diff(x1_1st, x1);
x2_2nd = diff(x2_1st, x2);
x1x2_der = diff(x1_1st, x2);
x2x1_der = diff(x2_1st, x1);

%num = double(subs(x1_1st, [x1, x2], [10, 1]))
%Apply Newton's method
f_1st = [x1_1st x2_1st]'; % Gradient matrix
Hes = [x1_2nd x1x2_der; x2x1_der x2_2nd]; % Hessian matrix
% k = 0
x_0 = [10, 1]
b = double(subs(f_1st, [x1, x2], x_0))
A = double(subs(Hes, [x1, x2], x_0))
d = -b;
fun = @(theta) 5*(x_0(1) + d(1)*theta - 2)^4 + 3*(x_0(2) + d(2)*theta - 5)^4 - (x_0(1) + d(1)*theta)*(x_0(2) + d(2)*theta);
%[theta,fval,exitflag] = fminunc(fun, 0.1);
[theta, fval] = Golden_section(fun, [0, 10], 0.0001)

% k = 1
x_1 = [x_0(1) + theta*d(1), x_0(2) + theta*d(2)]
b1 = double(subs(f_1st, [x1, x2], x_1))
A1 = double(subs(Hes, [x1, x2], x_1))
d1 = -b1;
fun1 = @(theta) 5*(x_1(1) + d1(1)*theta - 2)^4 + 3*(x_1(2) + d1(2)*theta - 5)^4 - (x_1(1) + d1(1)*theta)*(x_1(2) + d1(2)*theta);
%[theta1,fval1,exitflag1] = fminunc(fun1, theta);
[theta, fval] = Golden_section(fun1, [0, 10], 0.0001)

% k = 2
x_2 = [x_1(1) + theta*d1(1), x_1(2) + theta*d1(2)]
b2 = double(subs(f_1st, [x1, x2], x_2))
A2 = double(subs(Hes, [x1, x2], x_2))
d2 = -b2;
fun2 = @(theta) 5*(x_2(1) + d2(1)*theta - 2)^4 + 3*(x_2(2) + d2(2)*theta - 5)^4 - (x_2(1) + d2(1)*theta)*(x_2(2) + d2(2)*theta);
%[theta1,fval1,exitflag1] = fminunc(fun1, theta);
[theta, fval] = Golden_section(fun2, [0, 10], 0.0001)

% k = 3
x_3 = [x_2(1) + theta*d2(1), x_2(2) + theta*d2(2)]
b3 = double(subs(f_1st, [x1, x2], x_3))
A3 = double(subs(Hes, [x1, x2], x_3))
d3 = -b3;
fun3 = @(theta) 5*(x_3(1) + d3(1)*theta - 2)^4 + 3*(x_3(2) + d3(2)*theta - 5)^4 - (x_3(1) + d3(1)*theta)*(x_3(2) + d3(2)*theta);
%[theta1,fval1,exitflag1] = fminunc(fun1, theta);
[theta, fval] = Golden_section(fun3, [0, 10], 0.0001)

% k = 4
x_4 = [x_3(1) + theta*d3(1), x_3(2) + theta*d3(2)]
b4 = double(subs(f_1st, [x1, x2], x_4))
A4 = double(subs(Hes, [x1, x2], x_4))
d4 = -b4;
fun4 = @(theta) 5*(x_4(1) + d4(1)*theta - 2)^4 + 3*(x_4(2) + d4(2)*theta - 5)^4 - (x_4(1) + d4(1)*theta)*(x_4(2) + d4(2)*theta);
%[theta1,fval1,exitflag1] = fminunc(fun1, theta);
[theta, fval] = Golden_section(fun4, [0, 10], 0.0001)

%fun2 = @(x) 5*(x(1) - 2)^4 + 3*(x(2) - 5)^4 - x(1)*x(2);
%[theta2,fval2,exitflag2] = fminunc(fun2, x_0);
