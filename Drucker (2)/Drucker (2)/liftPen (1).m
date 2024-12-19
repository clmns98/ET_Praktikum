function liftPen(brick,ziel)
% %Stift heben
    b = brick.motorB;
    b.brakeMode = 'Brake';
    b.power = -20;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();
%Stift an Zielpos. bringen
    %y-Achse
    a = brick.motorA;
    a.speedRegulation = 1;
    a.brakeMode = 'Brake';
    a.limitMode = 'Tacho';
    a.limitValue = abs(ziel(2))*10;
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
    c.limitValue = abs(ziel(1))*20;
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
    b = brick.motorB;
    buttonAngel = brick.sensor4;
    b.power = 20;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 0;
    b.stop;
    b.start();
    while buttonAngel.value == 0
    end
    b.stop;
end