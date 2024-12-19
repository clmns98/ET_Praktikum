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



% ein 'U' darstellen

brick = EV3();
brick.connect('usb');

a = brick.motorA; % vertikal
b = brick.motorB; % kippen
c = brick.motorC; % horizontal

aPower = 10;
bPower = 10;
cPower = 90;
a.power = aPower;
b.power = - bPower;
c.power = - cPower;
a.limitMode = 'Tacho';
b.limitMode = 'Tacho';
c.limitMode = 'Tacho';  
a.speedRegulation = 1;
b.speedRegulation = 1;
c.speedRegulation = 1;

a.resetTachoCount;
c.resetTachoCount;

lang = 8;
kurz = 4;
pausenzeit = 2;
eineUmdrehung = 360;

% eineUmdrehung * xRatio = 1cm bewegung
aRatio = 360 / (5.5 * pi);
cRatio = 360 / (3.1 * pi);
% raeder machen die langen/vertikalen Striche
a.limitValue = lang * aRatio;
% kippen
b.limitValue = 45;
% schiene macht die kurzen/horizontalen Striche
c.limitValue = kurz * cRatio;

% den vertikalen 'U' Strich zeichnen
a.start;
a.waitFor;
a.stop;
pause(pausenzeit);

% den horizontalen 'U' Strich zeichnen
c.start;
c.waitFor;
c.stop;
pause(pausenzeit);

% anheben
% hoch fahren
% Power umdrehen, da entgegengesetzte Richtung
a.power = - aPower;
a.start;
a.waitFor;

% den vertikalen 'U' Strich zeichnen

% Stift absetzen
% b.start;
% b.waitFor;

% Stift seitlich bewegen
c.start;
c.waitFor;
c.stop;
pause(pausenzeit);

% nächster Buchstabe: 'O'

% den vertikalen 'O' Strich zeichnen
% a.power = aPower;
% a.start;
% a.waitFor;
% a.stop;
% pause(pausenzeit);
% 
% % den horizontalen unteren 'U' Strich zeichnen
% c.power = cPower;
% c.start;
% c.waitFor;
% c.stop;
% pause(pausenzeit);

% den zweiten vertikalen 'U' Strick zeichnen
% a.power = - aPower;
% a.start;
% a.waitFor;
% a.stop;
% pause(pausenzeit);

% % den oberen horizontalen unteren 'U' Strich zeichnen
% c.power = - cPower;
% c.start;
% c.waitFor;
% c.stop;
% pause(pausenzeit);

brick.disconnect;