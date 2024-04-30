% Plot the sphere where x^2 + y^2 + z^2 = 1
fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, 'FaceColor', 'r', 'EdgeColor', 'none', 'FaceAlpha', 0.5);
hold on;
grid on;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('Region defined by x^2 + y^2 + z^2 \leq 1 and 3x - z \leq 0');

% Use meshgrid to create a grid for the plane
[x, y] = meshgrid(-1:0.1:1, -1:0.1:1);
z = 3*x;

% Plot only the part of the plane that is inside the sphere
hs = surf(x, y, z, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Create a mask for the part of the plane that is outside the sphere
mask = x.^2 + y.^2 + z.^2 > 1;

% Apply the mask
hs.CData(mask) = NaN;

% Adjust the view for better visualization of the intersection
view(3);
light; lighting phong; % Add lighting for better visual effects
