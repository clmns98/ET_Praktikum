%% Robotor drehen
function turnBot(brickObj, winkel)
    %nur drehen, wenn der Winkel > 0
     if winkel > 0
         %Motoren passend einstellen
         a = brickObj.motorA;
         b = brickObj.motorB;
         a.power = 10;
         a.brakeMode = 'Brake';
         a.speedRegulation = 'OFF';
         
         %limitValue passend der Übersetzun von Motor auf Räder
         a.limitValue = winkel*2.143;

         %motoren Starten (maximal gegenläufig)
         a.syncedStart(b, 'turnRatio', -200)
         a.waitFor;
     end
end