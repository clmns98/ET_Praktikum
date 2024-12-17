%% Lichtsensor-Versuch - Sensor timergesteuert auslesen
function lightReadWithTimer(brickObj, numberOfSeconds)
    
    % ... Initialisierung der Vektoren, Starten der Stoppuhr hierher kopieren ...
    % ...
    myUserData.brick = brickObj;
    myUserData.time = numberOfSeconds;
    myUserData.values = [];
    myUserData.times = [];
    
    tic;
    % Timer-Objekt anlegen und starten
    % ...
    t = timer;
    set(t, 'period', 0.05, 'userData', myUserData, 'timerFcn', @readLightTimerFcn, 'executionMode', 'fixedDelay');
    t.TasksToExecute = numberOfSeconds / 0.05;
    start(t);
    wait(t);
    % Daten aus Timer-Objekt auslesen.
    % ...
    disp(t.UserData.times);
    disp(t.UserData.values);
    % Plotten der Ergebnisse hierher kopieren
    % ...
    t.UserData.times = t.UserData.times - t.UserData.times(1);
    figure(1)
    plot(t.UserData.times, t.UserData.values);
    legend("lichtintensität")
    xlabel("Sekunden");
    ylabel("Intensität");
    
    t.UserData.timediffs = diff(t.UserData.times);
    
    figure(2)
    hold on;
    plot(t.UserData.times(1:(end-1)),t.UserData.timediffs);
    yline(mean(t.UserData.timediffs));
    legend("Zeitdifferenzen über Zeit", 'Mittelwert');
    xlabel("Sekunden");
    ylabel("Delta Sekunden");

end
%--------------------------------------------------------------------------

%%
function readLightTimerFcn (timerObj, event)

% UserData aus Timer-Objekt holen
% ...
    UserData = timerObj.userData;

% Zeit und Sensorwert in Datenstruktur speichern:
% Schleifeninhalt der while-Schleife aus lightReadWithLoop hierher kopieren
% ...
    UserData.values = [UserData.values, UserData.brick.sensor1.value];
    UserData.times = [UserData.times, toc];
% Daten zurueck in Timer-Objekt sichern
% ...
    timerObj.userData = UserData;

end

%--------------------------------------------------------------------------
