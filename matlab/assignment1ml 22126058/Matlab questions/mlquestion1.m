
R = 58;
M = 07;
W = 09; 


coefficients = [R, R*M, W, 25];

roots_of_polynomial = roots(coefficients);


disp('The roots of the polynomial are:');
disp(roots_of_polynomial);