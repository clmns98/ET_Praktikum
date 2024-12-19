function printing(brick,x,y)
    %y-Achse
    betrag = sqrt(x^2+y^2);
    a = brick.motorA;
    a.speedRegulation = 1;
    a.limitMode = 'Tacho';
    y
    a.limitValue = abs(y)*10;
    a.power = 20 * (y/betrag);
    
    %x-Achse
    c = brick.motorC;
    c.speedRegulation = 1;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(x)*20;
    c.power = -70*(x/betrag);

      c.start();
      a.start();
      a.waitFor();
      c.waitFor();      
end