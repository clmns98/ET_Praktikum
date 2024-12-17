function fahrwinkel = findGap(brickObj)
    %Motor des Ultraschalls und Sensor einstellen
    radarMotor = brickObj.motorC;
    sensor = brickObj.sensor1;
    sensor.mode = DeviceMode.UltraSonic.DistCM;
    
    radarMotor.brakeMode = 'Brake';
    radarMotor.speedRegulation = 1;
  
    radarMotor.limitMode = 'Tacho';
    radarMotor.resetTachoCount;
    
    radarMotor.power = -10;
    radarMotor.limitValue = 2*3;
    radarMotor.resetTachoCount;
    
    %Arrays initialisieren
    abstaende = [];
    winkel = [];
    abstaende(1) = sensor.value;
    winkel(1) = 0;
    
    %Alle 2 Grad eine Messung
    for i = 1:180
        radarMotor.start();
        radarMotor.waitFor;
        abstaende = [abstaende, sensor.value];
        winkel = [winkel, (i+1)*2];
    end
    
    %Ultraschallsensor in Ausgangsposition zurückdrehen
    count = (-radarMotor.tachoCount);
    radarMotor.power = 40;
    radarMotor.resetTachoCount;
    radarMotor.limitValue = count ;
    radarMotor.start();
    radarMotor.waitFor;
    

    
    %Ausgaenge definieren als Stellen wo der Abstand 
    % über den Durschnitt liegt
    ausgaenge = [];
    for i = 1:length(abstaende)
        if abstaende(i) > mean(abstaende)
            ausgaenge(i) = 1;
        else
            ausgaenge(i) = 0;
        end
    end
    
    %Plotten der Abstaende
    figure(1)
    polarplot(deg2rad(winkel), abstaende);
    %Plotten der Ausgänge
    figure(2);
    polarplot(deg2rad(winkel), ausgaenge);
    
    %verschiebung der Arraywerte so das bei index=1 kein Ausgang ist
    counter = 0;
    while ausgaenge(1) == 1
        ausgaenge = [ausgaenge(2:end), ausgaenge(1)];
        counter = counter + 1;
    end
    
    %Variablen initialisieren
    gaps = [];
    grad = [];
    maxLength = 0;
    currentLength = 0;
    indice_of_maxLength = 0;

    %größter Ausgang finden
    for i = 1:length(ausgaenge)
        if ausgaenge(i) == 1
            currentLength = currentLength + 1;
        else
            temp = maxLength;
            maxLength = max(maxLength, currentLength);
            if maxLength > temp
                % Mitte des Winkels von der größten Lücke
                indice_of_maxLength = round(i + counter - maxLength/2);
                gaps = [gaps, maxLength];
                grad = [grad, indice_of_maxLength*2];
            end
            currentLength = 0;
        end
    end
    temp = maxLength;
    maxLength = max(maxLength, currentLength);
    if maxLength > temp
        % Mitte des Winkels von der größten Lücke
        indice_of_maxLength = round(i + counter - maxLength/2);
        gaps = [gaps, maxLength];
        grad = [grad, indice_of_maxLength*2];
    end
    
    disp([gaps;grad])
    
    fahrwinkel = indice_of_maxLength * 2;
end

