%Druckansicht
figure('Name', 'Ausgabe', 'NumberTitle', 'off');
axes;
axis off;

%Eingabefeld
eingabe = inputdlg({'Eingabe'}, "Text");
eingabe =  char(eingabe);

%x und y Werte initialisieren; x und y sind Position des Stiftes

x = 0;
y = 0;
x_alt = 0;

%Verbindung zum Brick
brick = EV3();
brick.connect('usb');

%Kalibrierung
kalibrierung(brick);

% Durchgehen der eigegebenen Buchstaben durch for-Schleife
for i = 1:length(eingabe)
    
    % "Bauanleitung" für gegebenen Buchstaben speichern
    [buchstabe,index,x_neu,eingang,ausgang] = Alphabet(eingabe(i),x,y);
    
    % Stift an Anfangsposition bringen
    liftPen(brick,eingang);

    % Linien des Buchstabens durchgehen
    for j = 1:index
        % Wenn die Bedingung erfüllt ist, bedeutet das, dass der Stift eine
        % Linie ziehen soll, anstatt den Stift zu heben
        if buchstabe(j,5) == 0
            %geschriebene Linie
        line([buchstabe(j,1);buchstabe(j,2)], [buchstabe(j,3);buchstabe(j,4)], 'LineStyle', '-', 'Color', 'black','Linewidth', 5);
        x_Verschiebung = buchstabe(j,2)-buchstabe(j,1);
        y_Verschiebung = buchstabe(j,4)-buchstabe(j,3);

        %Linie Zeichnen
        if x_Verschiebung == 0
            y_print(brick,y_Verschiebung);
        elseif y_Verschiebung == 0
            x_print(brick,x_Verschiebung);
        end

        else
            %Linie mit angehobenem Stift abfahren
        x_Verschiebung = buchstabe(j,2)-buchstabe(j,1);
        y_Verschiebung = buchstabe(j,4)-buchstabe(j,3);
        ziel = [x_Verschiebung, y_Verschiebung];
        liftPen(brick,ziel);
        end

    end

    % Wenn Bedingung erfüllt Zeilenumbruch
    if x_neu > 50
    x = 0;
    y = y -7;
    else
    % ansonsten Ausgangswert festlegen
    x_alt = x;
    x = x_neu;
    end

    % Stift in Ausgangsposition bringen
    returnPen(brick,ausgang,x_neu,x_alt);
    
end

%Verbindung schliessen
brick.disconnect;