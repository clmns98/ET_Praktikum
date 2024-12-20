function ausgabe(brick)
% %Stift heben
if brick.sensor1.value == 0
    b = brick.motorB;
    b.brakeMode = 'Brake';
    b.speedRegulation = 1;
    b.power = -20;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();
end
%y-Achse
    a = brick.motorA;
    a.speedRegulation = 1;
    a.brakeMode = 'Brake';
    a.limitMode = 'Tacho';
    a.limitValue = 720;
        a.power = -7;
    a.start();
    a.waitFor();

end