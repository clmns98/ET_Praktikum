% zwei komplexe zahlen durch ein gui verarbeiten

brick = EV3();
brick.connect('usb');


answer = inputdlg({'Erste komplexe Zahl', 'Zweite komplexe Zahl', 'Rechenoperation'}, "Brechnung von zwei komplexen Zahlen");
erste_zahl = str2double(answer(1));
zweite_zahl = str2double(answer(2));
my_case =  char(answer(3));

switch my_case
    case 'mul'
        result = erste_zahl*zweite_zahl;
        compassplot(result);
        hold on;
        compassplot(erste_zahl);
        compassplot(zweite_zahl);
        legend("Ergebnis", "Erste Zahl", "Zweite Zahl", 'LineWidth', 2);
        powerA = -20;
        powerB = 40;
    case 'div'
        result = erste_zahl/zweite_zahl;
        compassplot(result);
        hold on;
        compassplot(erste_zahl);
        compassplot(zweite_zahl);
        legend("Ergebnis", "Erste Zahl", "Zweite Zahl", 'LineWidth', 2);
        powerA = -20;
        powerB = 40;
    case 'conj'
        result = conj(erste_zahl);
        compassplot(result);
        hold on;
        compassplot(erste_zahl);
        legend("Ergebnis", "Eingabe", 'LineWidth', 2);
        powerA = -20;
        powerB = 0;
    % case 'sqrt'
    %     result = sqrt(erste_zahl)
end

a = brick.motorA;
b = brick.motorB;
a.stop();
b.stop();
a.power = powerA;
b.power = powerB;

a.limitMode = 'Tacho';
b.limitMode = 'Tacho';

a.speedRegulation = 1;
b.speedRegulation = 1;

a.brakeMode = 'brake';
b.brakeMode = 'brake';

winkel_erste_zahl = angle(erste_zahl);
winkel_zweite_zahl = angle(zweite_zahl);
winkel_result = angle(result);

if angle(erste_zahl) < 0
    winkel_erste_zahl = 2*pi + angle(erste_zahl);
end

if angle(zweite_zahl) < 0
    winkel_zweite_zahl = 2*pi + angle(zweite_zahl);
end

if angle(result) < 0
    winkel_result = 2*pi + angle(result);
end

a.limitValue = winkel_erste_zahl*(5/3)*(180/pi);
b.limitValue = winkel_zweite_zahl*7*(180/pi);

a.start();
b.start();
pause(8);

a.limitValue = (winkel_result*(180/pi)+(360 - winkel_erste_zahl*(180/pi)))*(5/3);
a.resetTachoCount;
a.start();
pause(8);

a.resetTachoCount;
b.resetTachoCount;

a.limitValue = (360 - winkel_result*(180/pi))*(5/3);
b.limitValue = (360 - winkel_zweite_zahl*(180/pi))*7;

a.start();
b.start();
pause(8);

brick.disconnect;
