close all; clear all; clc;
a = -2; b=1; % initial interval
c = (-1+sqrt(5))/2; % golden section

x1 = c*a + (1-c)*b;
x2 = (1-c)*a + c*b;
f1 = x1.^4 + 10*x1.*sin(x1.^2);
f2 = x2.^4 + 10*x2.*sin(x2.^2);

iter = 0;
for j = 1:100
    iter = iter + 1;
    if f1 < f2 % move right boundary
        b = x2; x2 = x1; f2 = f1;
        x1 = c*a + (1-c)*b;
        f1 = x1.^4 + 10*x1.*sin(x1.^2);
    else
        a = x1; x1 = x2; f1 = f2;
        x2 = (1-c)*a + c*b;
        f2 = x2.^4 + 10*x2.*sin(x2.^2);
    end
    
    if (b-a) < 10^(-6) % break if close
        break
    end    
end

iter

