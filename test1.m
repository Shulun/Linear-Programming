% Test1
close all; clear all; clc;
A = [1 1 1 0; 1 1 1 0; -1 -1 0 1; -1 -1 0 1];
rel = '<><>';
b = [2; 2; -1; -1];
vert = extrpts(A, rel, b)