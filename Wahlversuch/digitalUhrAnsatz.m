% Buchstaben wie analog Uhr

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
% disp(stop);

% Visualisierung des STOP-Arrays
% imagesc(stop);
% colormap(gray);
% axis equal;
% axis off;



% ein 'L' darstellen
% 

brick = EV3();
brick.connect('usb');

a = brick.motorA;
c = brick.motorC;

aPower = 10;
bPower = 90;
a.power = aPower;
c.power = - bPower;
a.limitMode = 'Tacho';
c.limitMode = 'Tacho';  
a.speedRegulation = 1;
c.speedRegulation = 1;

a.resetTachoCount;
c.resetTachoCount;

lang = 8;
kurz = 4;

% Ein 'L' zeichnen
aRatio = 17;
cRatio = 718.5;
% raeder machen die langen/vertikalen Striche
a.limitValue = lang * aRatio;
% kette macht die kurzen/horizontalen Striche
c.limitValue = kurz * cRatio;

% den vertikalen 'L' Strich zeichnen
a.start;
a.waitFor;
a.stop;
pause(3);

% den horizontalen 'L' Strich zeichnen
c.start;
c.waitFor;
c.stop;
pause(3);

% den vertikalen 'L' Strich zeichnen
a.power = - aPower;
a.start;
a.waitFor;
a.stop;
pause(3);

% den vertikalen 'L' Strich zeichnen
a.power = aPower;
a.start;
a.waitFor;
a.stop;
pause(3);

% den horizontalen 'L' Strich zeichnen
c.start;
c.waitFor;
c.stop;
pause(3);

% halb zurück

brick.disconnect;