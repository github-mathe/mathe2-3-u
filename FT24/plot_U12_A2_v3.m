% Plot the sphere where x^2 + y^2 + z^2 = 1
fimplicit3(@(x, y, z) x.^2 + y.^2 + z.^2 - 1, 'FaceColor', 'r', 'EdgeColor', 'none', 'FaceAlpha', 0.5);
hold on;
grid on;
axis equal;
xlabel('x');
ylabel('y');
zlabel('z');
title('Region defined by x^2 + y^2 + z^2 \leq 1, 3x - z \leq 0, and 10x^2 + y^2 = 1');

% Use meshgrid to create a grid for the plane
[x, y] = meshgrid(-1:0.1:1, -1:0.1:1);
z = 3*x;

% Plot only the part of the plane that is inside the sphere
hs = surf(x, y, z, 'FaceAlpha', 0.5, 'EdgeColor', 'none');

% Create a mask for the part of the plane that is outside the sphere
mask = x.^2 + y.^2 + z.^2 > 1;

% Apply the mask
hs.CData(mask) = NaN;

% Plot the ellipse for a range of z-values to show its position through the volume
zValues = -1:0.2:1; % Range of z-values
for zSlice = zValues
    % The ellipse equation is independent of z, so we plot it in 2D and set the third dimension manually
    fimplicit(@(x, y) 10*x.^2 + y.^2 - 1, [-1, 1, -1, 1], 'k', 'LineWidth', 1.5);
end

% Adjust the view for better visualization of the intersection
view(3);
light; lighting phong; % Add lighting for better visual effects

hold off;
