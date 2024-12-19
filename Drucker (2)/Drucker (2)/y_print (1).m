function y_print(brick,y)
%y-Achse
    a = brick.motorA;
    a.speedRegulation = 1;
    a.brakeMode = 'Brake';
    a.limitMode = 'Tacho';
    a.limitValue = abs(y)*10;
    if y<0
        a.power = -7;
    else
        a.power = 7;
    end
    a.start();
    a.waitFor();
end