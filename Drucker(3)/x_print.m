function x_print(brick,x)
s=0.75;
%x-Achse
    c = brick.motorC;
    c.limitMode = 'Tacho' ;
    c.brakeMode = 'Brake';
    c.speedRegulation = 1;
    c.limitValue = abs(x)*20*s;
    if x<0
        c.power = 40;
    else
        c.power = -40;
    end
    c.start();
    c.waitFor();
end