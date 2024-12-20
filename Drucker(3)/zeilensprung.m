function [x,y]=zeilensprung(brick,x,y)%brick
s=0.75;
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
    a.limitValue = 7*10*s;
    a.power = -2;
    a.start();
    a.waitFor();

    %x-Achse
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

    x = 0;
    y = y -7;
end