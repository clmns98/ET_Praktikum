figure('Name', 'Ausgabe', 'NumberTitle', 'off');
axes;
axis off;

eingabe = inputdlg({'Eingabe'}, "Text");
eingabe =  char(eingabe);
x = 0;
y = 0;
x_alt = 0;

brick = EV3();
brick.connect('usb');

kalibrierung(brick);

for i = 1:length(eingabe)

    [buchstabe,index,x_neu,eingang,ausgang] = Alphabet(eingabe(i),x,y);
    
    liftPen(brick,eingang);

    for j = 1:index
        line([buchstabe(j,1);buchstabe(j,2)], [buchstabe(j,3);buchstabe(j,4)], 'LineStyle', '-', 'Color', 'black','Linewidth', 5);
        x_Verschiebung = buchstabe(j,2)-buchstabe(j,1);
        y_Verschiebung = buchstabe(j,4)-buchstabe(j,3);
        if j == index
        if (buchstabe(j-1,2) == buchstabe(j,1) || buchstabe(j-1,4) == buchstabe(j,3));
            ziel = [buchstabe(j+1,1)-buchstabe(j,2),buchstabe(j+1,3)-buchstabe(j,4)];
            liftPen(brick,ziel);
        end
        end

        if x_Verschiebung == 0
            y_print(brick,y_Verschiebung);
        elseif y_Verschiebung == 0
            x_print(brick,x_Verschiebung);
        end

        if (buchstabe(j+1,1) == buchstabe(j,2) || buchstabe(j+1,3) == buchstabe(j,4))&& j < index;
            ziel = [buchstabe(j+1,1)-buchstabe(j,2),buchstabe(j+1,3)-buchstabe(j,4)];
            liftPen(brick,ziel);
        end
    end

    if x_neu > 50
    x = 0;
    y = y -7;
    else
    x_alt = x;
    x = x_neu;
    end

    returnPen(brick,ausgang,x_neu,x_alt);
    
end

brick.disconnect;