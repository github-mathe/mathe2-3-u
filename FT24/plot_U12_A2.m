% Number of points
n = 100;

% Create a sphere
[x, y, z] = sphere(n);
x = x(:);
y = y(:);
z = z(:);

% Condition for the sphere
sphereCondition = x.^2 + y.^2 + z.^2 <= 1;

% Condition for the plane inequality
planeCondition = 3*x - z <= 0;

% Combine conditions
combinedCondition = sphereCondition & planeCondition;

% Plotting
figure;
hold on;
title('Region defined by x^2 + y^2 + z^2 <= 1 and 3x - z <= 0');
xlabel('x');
ylabel('y');
zlabel('z');

% Plot the whole sphere with low opacity
%scatter3(x(sphereCondition), y(sphereCondition), z(sphereCondition), '.', 'MarkerEdgeAlpha', 0.1);

% Highlight the region satisfying both conditions
scatter3(x(combinedCondition), y(combinedCondition), z(combinedCondition), 'r.');

% Adjust the view
view(3);
axis equal;
grid on;

hold off;
