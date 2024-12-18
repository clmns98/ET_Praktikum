function printing(brick,x,y)
    %Stift an Zielpos. bringen
    %y-Achse
    if y ~= 0
    a = brick.motorA;
    a.speedRegulation = 1;
    a.limitMode = 'Tacho';
    a.limitValue = abs(y)*20.466;
    if y<0
        a.power = 10;
    else
        a.power = -10;
    end
    end
    

    %x-Achse
    if x ~= 0
    c = brick.motorC;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(x)*718.5;
    if x<0
        c.power = 100;
    else
        c.power = -100;
    end
    end

    if y ~= 0
        a.start();
        a.waitFor();
    end
    if x ~= 0
      c.start();
      c.waitFor();  
    end
    
end