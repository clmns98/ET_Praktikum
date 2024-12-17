% Erstellen eines 17x17 Arrays mit Nullen
stop = zeros(17, 17);

% Y, X
% Buchstabe 'S' (um 1 Zeile nach unten verschoben)
stop(7, 2:4) = 1;  % Obere horizontale Linie des S
stop(7:9, 2) = 1;  % Linke vertikale Linie des S
stop(9, 2:4) = 1;  % Mittlere horizontale Linie des S
stop(9:11, 4) = 1;  % Untere rechte Linie des S
stop(11, 2:4) = 1;  % Untere horizontale Linie des S

% Buchstabe 'T' (um 1 Zeile nach unten verschoben)
stop(7, 6:8) = 1;  % Obere horizontale Linie des T
stop(7:11, 7) = 1;  % Vertikale Linie des T

% Buchstabe 'O' (um 1 Zeile nach unten verschoben)
stop(7, 10:12) = 1;  % Obere horizontale Linie des O
stop(11, 10:12) = 1;  % Untere horizontale Linie des O
stop(7:11, 10) = 1;   % Linke vertikale Linie des O
stop(7:11, 12) = 1;   % Rechte vertikale Linie des O

% Buchstabe 'P' (um 1 Zeile nach unten verschoben)
stop(7:11, 14) = 1;  % Vertikale Linie des P
stop(7, 14:16) = 1;  % Obere horizontale Linie des P
stop(9, 14:16) = 1;  % Mittlere horizontale Linie des P
stop(7:9, 16) = 1;   % Rechte vertikale Linie des P

% Das Array anzeigen
disp(stop);

% Visualisierung des STOP-Arrays
imagesc(stop);
colormap(gray);
axis equal;
axis off;
