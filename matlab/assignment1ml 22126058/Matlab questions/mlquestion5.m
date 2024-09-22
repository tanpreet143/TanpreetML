numbers = input('Enter the numbers as a vector: '); % input is like [2,23,8] 
n = length(numbers);
for i = 1:n-1
    for j = 1:n-i
        if numbers(j) > numbers(j+1)
            temp = numbers(j);
            numbers(j) = numbers(j+1);
            numbers(j+1) = temp;
        end
    end
end
disp('Sorted numbers:');
disp(numbers);