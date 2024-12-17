% Geradeausfahren bis auf 20cm
function drive(brickObj)
    %Motoren und Sensoren einstellen
    a = brickObj.motorA;
    b = brickObj.motorB;
    sensor = brickObj.sensor1;

    a.limitValue = 0;
    %Sensor auf CM einstellen
    sensor.mode = DeviceMode.UltraSonic.DistCM;
    a.power = 40;
    a.brakeMode = 'Brake';
    a.speedRegulation = 'OFF';
            
    %Motoren Starten
    a.syncedStart(b, 'turnRatio', 0)

    while sensor.value > 20
        sensor.value;
    end
     
    %Motoren Stoppen
    a.syncedStop();
    brickObj.beep();
    pause(1);
end 
