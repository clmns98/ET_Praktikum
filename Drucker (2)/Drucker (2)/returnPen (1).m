function returnPen(brick,ziel,neueX_koordinate,alteX_koordinate)
%berechnung zu bewegender Strecke
    x = neueX_koordinate-alteX_koordinate-ziel(1);
    y = ziel(2);
%Stift heben
    b = brick.motorB;
    b.power = -20;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();

%y Achse
    a = brick.motorA;
    a.speedRegulation = 1;
    a.limitMode = 'Tacho';
    a.limitValue = abs(y)*10;
    if y<0
        a.power = -10;
    else
        a.power = 10;
    end
    if y ~= 0
    a.start();
    a.waitFor();
    end

%x Achse
    c = brick.motorC;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(x)*20;
    if x<0
        c.power = 100;
    else
        c.power = -100;
    end
    if x ~= 0
    c.start();
    c.waitFor();
    end

%Stift senken
    b = brick.motorB;
    b.power = 10;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.stop;
    b.start();
    b.waitFor();
end