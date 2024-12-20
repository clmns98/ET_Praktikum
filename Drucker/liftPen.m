function liftPen(brickObj,ziel)
% %Stift heben
    b = brickObj.motorB;
    b.power = -10;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();
%Stift an Zielpos. bringen
    %y-Achse
    a = brickObj.motorA;
    a.speedRegulation = 1;
    a.limitMode = 'Tacho';
    a.limitValue = abs(ziel(2))*20.488;
    if ziel(2)<0
        a.power = 2;
    else
        a.power = -2;
    end
    if ziel(2) ~= 0
        a.start();
        a.waitFor();
    end
    

    %x-Achse
    c = brickObj.motorC;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(ziel(1))*718.5;
    if ziel(1)<0
        c.power = 100;
    else
        c.power = -100;
    end
    if ziel(1) ~= 0
        c.start();
        c.waitFor();
    end
    
    %Stift senken
    b = brickObj.motorB;
    b.power = 10;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();
end