function e2 = datafit(c)

x = 1:24;
y = [75 77 76 73 69 68 63 59 57 55 54 52 50 ...
    50 49 49 49 50 54 56 59 63 67 72];

e2 = sqrt(sum((c(1)*cos(c(2)*x) + c(3) - y).^2)/24);
