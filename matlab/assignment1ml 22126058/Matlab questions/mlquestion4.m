n = 3;
roll_no = 22126058; 
matrix = [roll_no * ones(1, n); randi(100, n-1, n)];
determinant = det(matrix);
disp(matrix);
disp('Determinant:');
disp(determinant);
