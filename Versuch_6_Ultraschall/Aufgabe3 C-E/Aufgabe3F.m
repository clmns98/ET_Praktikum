function Aufgabe3F2()
% brick initialisieren
brickObj = EV3();
%brickObj.connect('bt', 'deviceName', 'EV3-16-B', 'channel', 1);
brickObj.connect('usb');
radarMotor = brickObj.motorC;
sensor = brickObj.sensor1;
sensor.mode = DeviceMode.UltraSonic.DistCM;

% Brake Mode nutzen damit der Motor nicht zu weit schwingt
radarMotor.brakeMode = 'Brake';
% speedRegulation damit Motor präzise bewegt und genau misst
radarMotor.speedRegulation = 1;

abstand = [];
winkel = [];
gear_ratio = 3;
anzahlMessungen = 180;
schrittweite = 360 / anzahlMessungen;

% Parameter für Motor setzen
radarMotor.limitMode = 'Tacho';
radarMotor.resetTachoCount;

radarMotor.power = - 10;
radarMotor.limitValue = 2 * gear_ratio;

abstand(1) = sensor.value;
winkel(1) = 0;

% anzahlMessungen Messungen mit schrittweite Grad Schritten
for i = 1:anzahlMessungen
    radarMotor.start();
    radarMotor.waitFor;
    abstand = [abstand, sensor.value];
    winkel = [winkel, winkel(i) + schrittweite];
end

%zurück in Ausganszustand drehen
radarMotor.power = 40;
radarMotor.limitValue = - radarMotor.tachoCount;
radarMotor.start();
pause(4);
brickObj.disconnect;

% umrechnung in Bogenmaß
winkel = deg2rad(winkel);

polar(winkel, abstand);