function x_print(brick,x)
%x-Achse
    c = brick.motorC;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(x)*20;
    if x<0
        c.power = 70;
    else
        c.power = -70;
    end
    c.start();
    c.waitFor();
end