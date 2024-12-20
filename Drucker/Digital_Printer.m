figure('Name', 'Ausgabe', 'NumberTitle', 'off');
axes;
axis off;

%eingabe = inputdlg({'Eingabe'}, "Text");
eingabe =  'a';%char(eingabe);
x = 0;
y = 0;

brickObj = EV3();
brickObj.connect('usb');

for i = 1:length(eingabe)

    [buchstabe,motorWerte,index,x_neu,y_neu] = Alphabet(eingabe(i),x,y,brickObj);
    if x_neu > 100
    x = 0;
    y = y -7;
    else
    x = x_neu;
    y = y_neu;
    end
    for j = 1:index
        line([buchstabe(j,1);buchstabe(j,2)], [buchstabe(j,3);buchstabe(j,4)], 'LineStyle', '-', 'Color', 'black');
        printing(brickObj,motorWerte(j,1),motorWerte(j,2));
        
    end

end

brickObj.disconnect;