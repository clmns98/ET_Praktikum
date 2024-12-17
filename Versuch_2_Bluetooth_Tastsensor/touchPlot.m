function touchPlot(nominalval_vector,actualval_vector,switchstate_vector)
% Ausgabe der Ergebnisse von der GUI "touchGUI"
% Eingabewerte:
%   nominalval_vector: speichert die Sinuswelle
%   actualval_vector: speichert alle vorherigen Y-Werte (der letzte Eintrag
%   ist die letzte Y-Position)
%   switchstate_vector: speichert die Schalterzustaende des NXT Tastsensors


%% Variablen
x_values = 1:length(nominalval_vector);  % Vektor der x-Werte

%% Bearbeitung des Codes ab hier:
screenSize = get(0,'ScreenSize');
halfScreneSize = [screenSize(3)/4, screenSize(4)/4, screenSize(3)/2, screenSize(4)/2];

figure(2);
set(figure(2), 'position',halfScreneSize);

plot(x_values,nominalval_vector);
hold on;
plot(x_values,actualval_vector);
xlabel('X-Werte', 'FontSize',12);
ylabel('Y-Werte','FontSize',12);
title('Soll-Und-IstWert','FontSize',15);
grid on;
legend('Sollsignal', 'IstSignal');

value = 0;
for i = 1 : length(switchstate_vector)
    if switchstate_vector(i) == 1
        value = value + 1;
    end
end 

figure(3);
plot(x_values, switchstate_vector);
xlabel('X-Werte', 'FontSize',12);
ylabel('Y-Werte','FontSize',12);
title('Schalterstatus','FontSize',15);
text(0,0,sprintf('Anzahl=%f',value));
ylim([-0.5,1.5]);


end