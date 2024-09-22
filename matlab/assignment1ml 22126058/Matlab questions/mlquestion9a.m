R = 58 ;
n = 50; % Number of data points
x = linspace(1, 10, n);
y = R * x + randn(1, n) * 5; % Linear relationship with some noise

% Plotting the data points and the linear fit
figure;
scatter(x, y, 'filled');
hold on;
p = polyfit(x, y, 1); % Linear fit
y_fit = polyval(p, x);
plot(x, y_fit, '-r', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Data Points and Linear Fit');
legend('Data Points', 'Linear Fit');
grid on;