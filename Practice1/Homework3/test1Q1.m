close all; clear all; clc;

lol = [1 2 3; 4 5 6];
a = [1 2 3];

lol1 = lol';

nrow = size(lol, 1);
ncol = size(lol, 2);

%w = zeros(nrow, ncol);

w = [];

for i = 1:nrow
    for j = 1:ncol
        w = [w lol(i, j)*a];
    end
end
w
reshape(w, [ncol*length(a), nrow])'