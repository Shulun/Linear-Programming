close all; clear all; clc;

% Matrix of amount of nutrients per dollar spent
A = xlsread('Problem5.xls','A_matrix');
% Food package price vector
FPP = xlsread('Problem5.xls','Food_package_price');
% RDA vector
b = xlsread('Problem5.xls','b_matrix');

% Convert unit price matrix to a unit nutrient matrix
A1 = zeros(size(A));
if max(size(FPP)) == max(size(A))
   for i = 1:max(size(FPP))
       A1(i, :) = A(i, :)/10.*FPP(i);
   end
else
    display('Sizes do not match, double-check your input matrices.')
end

% Set up matrices and vectors for problem (a)
u = [1 2 4];
c = (FPP'*u)';
days = 30;
A2 = -A1';
A3 = -eye(max(size(A)));
A4 = eye(max(size(A)));
A_comb = [A2; A3; A4];

nrow = size(A_comb, 1);
ncol = size(A_comb, 2);

temp = [];

for i = 1:nrow
    for j = 1:ncol
        temp = [temp A_comb(i, j)*u];
    end
end
A_final = reshape(temp, [ncol*length(u), nrow])';

b1 = -b'.*days;
b2 = zeros(max(size(A)), 1);
b3 = ones(max(size(A)), 1)*7;
b_final = [b1; b2; b3];

[x, fval, exitflag] = bintprog(c, A_final, b_final)


