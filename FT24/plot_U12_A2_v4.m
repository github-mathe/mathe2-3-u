% Define the function for the sphere
sphereFunc = @(x, y, z) x.^2 + y.^2 + z.^2 - 1;

% Plot the sphere
fimplicit3(sphereFunc, [-1 1 -1 1 -1 1], 'FaceColor', 'r', 'EdgeColor', 'none', 'FaceAlpha', 0.5);
hold on;

% Define the function for the ellipse in 3D (considering z = 0 for visualization)
ellipseFunc = @(x, y, z) 10*x.^2 + y.^2 - 1;

% Plot the ellipse at z = 0 (as a representation)
fimplicit3(@(x, y, z) ellipseFunc(x, y, 0), [-1 1 -1 1 -0.1 0.1], 'EdgeColor', 'k', 'LineWidth', 1.5);

% Visualization adjustments
grid on;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('Region defined by the given inequalities');

% Adjust the view
view(3);
lighting gouraud;
light;

hold off;
