function kalibrierung(brick)
    %Stift richtig positionieren
    buttonAngel = brick.sensor4;
    if buttonAngel.value == 0
        b = brick.motorB;
        b.brakeMode = 'Brake';
        b.power = 70;
        b.limitMode = 'Tacho' ;  
        b.limitValue = 0;
        b.start();
        while buttonAngel.value == 0
        end
        b.stop;

    end
    b = brick.motorB;
    b.brakeMode = 'Brake';
    b.power = -20;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.start();
    b.waitFor();

    taster = brick.sensor1;
    if taster.value == 0
        c = brick.motorC;
        c.limitValue = 0;
        c.power = 70;
        c.stop;
        c.start();
        while taster.value == 0
        end
        c.stop
        c.power = -70;
        c.limitValue = 40;
        c.start();
        c.waitFor;
    end

    %Papier richtig positionieren
    
    paperSensorPrintbed = brick.sensor2;
    paperSensorPrintbed.mode = DeviceMode.Color.Reflect;

    paperSensorSupply= brick.sensor3;
    paperSensorSupply.mode = DeviceMode.NXTLight.Reflect;
    a = brick.motorA;
    a.limitValue = 0;
    if paperSensorPrintbed.value < 40
        while paperSensorSupply.value < 40
        end
        a.power = -10;
        a.start();
        while paperSensorPrintbed.value < 40
        end
        a.stop;
    end
    if paperSensorPrintbed.value >= 40
        a.power = 10;
        a.start();
        while paperSensorPrintbed.value > 40
        end
        a.stop;
        a.limitValue = 70;
        a.power = -10;
        a.start();
        a.waitFor
    end
