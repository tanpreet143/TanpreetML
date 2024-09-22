R = 58;
theta = linspace(0, 2*pi, 100);
x = R * cos(theta);
y = R * sin(theta);
plot(x, y);
title('Your Name - 2D Circle'); % Replace 'Your Name' with your actual name
xlabel('x');
ylabel('y');
axis equal;
grid on;