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
c = FPP;
days = 30;
A2 = -A1';
A3 = -eye(max(size(A)));
A_final = [A2; A3];
b1 = -b'.*days;
b2 = zeros(max(size(A)), 1);
b_final = [b1; b2];

[x, fval, exitflag] = linprog(c, A_final, b_final)

% Set up matrices and vectors for problem (b)
c_b = -b.*days;
A4 = -eye(max(size(b)));
A_b = [A1; A4];
b3 = zeros(max(size(b)), 1);
b_b = [FPP'; b3];

[x, fval, exitflag] = linprog(c_b, A_b, b_b)


