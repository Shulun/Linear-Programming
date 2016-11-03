% Newton's method  
close all; clear all; clc;

syms x
func = @(x) 15 - 12*x - 25*x.^2 + 2*x.^3;
diff_1st = diff(func(x));
diff_2nd = diff(diff_1st);
diff1 = @(x) subs(diff_1st, x); % First derivative
diff2 = @(x) subs(diff_2nd, x); % Second derivative

x(1) = 8; % initial guess
tor = 0.0001; % termination tolerance
iter = 0; % iteration counter
limit = 200; % iteration limit

while 1
    iter = iter + 1;
    x(iter + 1) = x(iter) - diff1(x(iter))/diff2(x(iter));
    if abs(diff1(x(iter + 1))) < tor
        break
    elseif iter > limit
        break
    end
end

iter
x_final = double(x(iter + 1))
func_val = double(func(x(iter + 1)))
