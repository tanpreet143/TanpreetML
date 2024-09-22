R = 58;
n = 50; % Number of data points
x = linspace(1, 10, n);
y = R * x + randn(1, n) * 5; % Linear relationship with some noise

% Polynomial fit
p_poly = polyfit(x, y, 2); % Fit a quadratic polynomial
y_poly_fit = polyval(p_poly, x);

% Plotting
figure;
scatter(x, y, 'filled');
hold on;
plot(x, y_poly_fit, '-b', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Data Points and Polynomial Fit');
legend('Data Points', 'Polynomial Fit');
grid on;