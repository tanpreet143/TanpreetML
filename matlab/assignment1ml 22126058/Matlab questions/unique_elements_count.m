function result = unique_elements_count(array)
    unique_numbers = unique(array);
    num_unique = length(unique_numbers);
    result = zeros(num_unique, 2);
    
    for i = 1:num_unique
        num = unique_numbers(i);
        count = sum(array == num);
        result(i, :) = [num, count];
    end
end