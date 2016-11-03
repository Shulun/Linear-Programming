% Golden section method
close all; clear all; clc;

xl = 7; xu = 9; % initial interval
c = (-1 + sqrt(5))/2; % golden section

x1 = c*xl + (1 - c)*xu;
x2 = (1 - c)*xl + c*xu;

func = @(x) 15 - 12*x -25*x.^2 + 2*x.^3;
f1 = func(x1);
f2 = func(x2);

tor = 0.1; % termination tolerance
iter = 0; % iteration counter
limit = 200; % iteration limit

while 1
    if f1 < f2 
        xu = x2; x2 = x1; f2 = f1;
        x1 = c*xl + (1 - c)*xu;
        f1 = func(x1);
    else
        xl = x1; x1 = x2; f1 = f2;
        x2 = (1 - c)*xl + c*xu;
        f2 = func(x2);
    end 
    iter = iter + 1;
    if abs(xu - xl) < tor
        break
    elseif iter > limit
        break
    end
end

iter
x_final = (xl + xu)/2
func(x_final)
