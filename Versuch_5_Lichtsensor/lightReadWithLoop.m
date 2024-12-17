%% Lichtsensor-Versuch - Sensor in Schleife auslesen
function lightReadWithLoop(brickObj, numberOfSeconds)

% hier wird keine Initialisierung des Sensors benoetigt!

% Initialisierung der Vektoren, Start der Stoppuhr
% ...
myUserData.brick = brickObj;
myUserData.values = [];
myUserData.times = [];

tic;

% In einer Schleife für die angegebene Anzahl an Sekunden messen
% ...
while toc <= numberOfSeconds
    myUserData.values = [myUserData.values, myUserData.brick.sensor1.value];
    myUserData.times = [myUserData.times, toc];
end


myUserData.times = myUserData.times - myUserData.times(1);



% Plotten der Ergebnisse
% ...
figure(1)
plot(myUserData.times, myUserData.values);
legend("lichtintensität")
xlabel("Sekunden");
ylabel("Intensität");

myUserData.timediffs = diff(myUserData.times);

figure(2)
hold on;
plot(myUserData.times(1:(end-1)),myUserData.timediffs);
yline(mean(myUserData.timediffs));
legend("Zeitdifferenzen über Zeit", 'Mittelwert');
xlabel("Sekunden");
ylabel("Delta Sekunden");


