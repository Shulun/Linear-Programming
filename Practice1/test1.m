close all; clear all; clc;

c = fminsearch('datafit', [12 pi/12 63]);

t = 1:24; % raw data
tem = [75 77 76 73 69 68 63 59 57 55 54 52 ...
    50 50 49 49 49 50 54 56 59 63 67 72];

tt = 1:0.01:24;
yfit = (c(1)*cos(c(2)*tt) + c(3)).';

plot(t, tem, 'ko', tt, yfit, 'k-')