n = input('Enter the value of n: ');
roll_no = 22126058; 
matrix = [roll_no * ones(1, n); randi(100, n-1, n)];
disp(matrix);