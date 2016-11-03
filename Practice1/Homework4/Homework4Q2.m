close all; clear all; clc;

num_interval = 200;
x1_interval = 0.1;
x2_interval = 0.1;

[x1,x2] = meshgrid(1:(4 - 1)/num_interval:4, 2:(8 - 2)/num_interval:8);
z = 5*(x1 - 2).^4 + 3*(x2 - 5).^4 - x1.*x2;
figure(1)
[C, h] = contour(x1, x2, z);
clabel(C, h)
f = @(x) 5*(x(1) - 2).^4 + 3*(x(2) - 5).^4 - x(1).*x(2);
% x0 = [10 1]';
% [x, fval] = fminunc(f, x0)
% hold on 
% plot(x(1), x(2), 'r*')
% hold off
