R = 58;
theta = linspace(0, 2*pi, 100);
x = R * cos(theta);
y = R * sin(theta);
z = zeros(size(theta));
plot3(x, y, z);
title('Your Name - 3D Circle'); % Replace 'Your Name' with your actual name
xlabel('x');
ylabel('y');
zlabel('z');
axis equal;
grid on;