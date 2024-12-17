function Aufgabe3E()
brickObj = EV3();
brickObj.connect('bt', 'deviceName', 'EV3-16-B', 'channel', 1);

bremswegkorrektur = @(x) 0.0006*x^2 -0.0223*x +1.7071;

a = brickObj.motorA;
b = brickObj.motorB;
sensor = brickObj.sensor1;
sensor.mode = DeviceMode.UltraSonic.DistCM;
bremswege = zeros(3,7);

% verschiedene Power Werte
for j = 2:8
    % drei exakt gleiche Messungen machen und diese mitteln
    for i = 1:3
        a.power = j*10;
        a.brakeMode = 'Brake';
        a.speedRegulation = 'OFF';
        
        
        a.syncedStart(b, 'turnRatio', 0)
        % bremswegkorrektur ist abhängig von den Power Werten
        while sensor.value > bremswegkorrektur(j*10)+40
            sensor.value
        end
        
        a.syncedStop();
        brickObj.beep();
        % Pause machen damit er nicht während der Mussung schwankt
        pause(1);
        sensor.value
        bremswege(i,j-1) = 40-sensor.value;
        pause(4);
        
        % züruckfahren
        a.power = -50;
        % damit er nicht wackelt coast verwwenden
        a.brakeMode = 'Coast';
        a.syncedStart(b, 'turnRatio', 0)
        % einen Meter Abstand zur Wand herstellen
        while sensor.value < 100
            sensor.value
        end
        a.syncedStop();
    end
    brickObj.beep();
    pause(4);
    brickObj.beep();
    pause(1);
end 
disp(bremswege)
disp(40 - bremswege)
means = mean(bremswege);
disp(means)
% ein Polynom zweiten Grads auf die Werte annähern
polyfit([20,30,40,50,60,70,80], means,2)

brickObj.disconnect;