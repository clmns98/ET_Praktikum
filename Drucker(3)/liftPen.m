function liftPen(brick,ziel)
s = 0.75;
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
%Stift an Zielpos. bringen
    %y-Achse
    a = brick.motorA;
    a.speedRegulation = 1;
    a.brakeMode = 'Brake';
    a.limitMode = 'Tacho';
    a.limitValue = abs(ziel(2))*10*s;
    if ziel(2)<=0
        a.power = -2;
    else
        a.power = 2;
    end
    if ziel(2) ~= 0
        a.start();
        a.waitFor();
    end
    

    %x-Achse
    c = brick.motorC;
    c.limitMode = 'Tacho' ;
    c.brakeMode = 'Brake';
    c.limitValue = abs(ziel(1))*20*s;
    if ziel(1)<=0
        c.power = 100;
    else
        c.power = -100;
    end
    if ziel(1) ~= 0
        c.start();
        c.waitFor();
    end
    
    %Stift senken
    if brick.sensor1.value == 0
    b = brick.motorB;
    buttonAngel = brick.sensor4;
    b.speedRegulation = 1;
    b.power = 10;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 0;
    b.stop;
    b.start();
    while buttonAngel.value == 0
    end
    b.stop;
    end
end