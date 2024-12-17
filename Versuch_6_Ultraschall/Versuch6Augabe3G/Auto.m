%Übergreifende Funktion
function Auto(verbindungstyp)
    %EV3 initialisieren
    brickObj = EV3();
    if strcmp(verbindungstyp, 'bt')
        brickObj.connect('bt', 'deviceName', 'EV3-16-B', 'channel', 1);
    else
        brickObj.connect('usb');
    end
    %Ausgang finden
    winkel = findGap(brickObj);
    %Roboter drehen
    turnBot(brickObj,winkel);
    %geradeaus fahren
    drive(brickObj);
    %brick disconnecten
    brickObj.disconnect;
end