function Aufgabe3C()
brickObj = EV3();
brickObj.connect('bt', 'deviceName', 'EV3-16-B', 'channel', 1);

%Motorobjekte und Sensorobjekt passend einstellen
a = brickObj.motorA;
b = brickObj.motorB;
sensor = brickObj.sensor1;
sensor.mode = DeviceMode.UltraSonic.DistCM;

a.power = -50;
a.brakeMode = 'Brake';
a.speedRegulation = 'OFF';

%start der Motoren
a.syncedStart(b, 'turnRatio', 0)

%solange der abstand gößer als 40 ist diesen abstand wiedergeben
while sensor.value > 40
    sensor.value
end
%nachdem der Abstand kleiner 40 wird gestoppt
a.syncedStop();

sensor.value
brickObj.disconnect;