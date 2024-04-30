% Definieren Sie die Eckpunkte des Polyeders basierend auf den Schnittpunkten der Ebenen
vertices = [0 0 0;    % Ursprung
            1 0 0;    % x-Achsenabschnitt, anpassen gemäß tatsächlichem Schnittpunkt
            0 2/3 0;  % y-Achsenabschnitt, anpassen gemäß tatsächlichem Schnittpunkt
            0 0 2/5]; % z-Achsenabschnitt

% Definieren Sie die Flächen des Polyeders
faces = {[1, 2, 4], [1, 3, 4], [1, 2, 3], [2, 3, 4]};

% Plotten Sie jede Fläche
figure;
hold on;
for i = 1:length(faces)
    f = faces{i};
    fill3(vertices(f,1), vertices(f,2), vertices(f,3), 'r');
end

% Einrichten des Plots
xlabel('x');
ylabel('y');
zlabel('z');
title('Volumen zwischen den Regionen');
axis equal;
view(-30, 30);
grid on;
