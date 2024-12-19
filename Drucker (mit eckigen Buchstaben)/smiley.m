brick = EV3();
brick.connect('usb');
bpower = 20;
apower = 10;
cpower = 40;
kantenlaengeA = 100;
kantenlaengeC = 200;
Auge1positionA = 50;
Auge1positionC = 60;


kalibrierung(brick);
a = brick.motorA;
c = brick.motorC;

%Papier richtig positionieren
hochkippen(brick, bpower)

a.power = -  apower;
a.limitValue = kantenlaengeA;
a.start;
a.waitFor;
a.stop;

% Stift absetzen
runterkippen(brick, bpower);

a.power = apower;
a.start;
a.waitFor;
a.stop;


% hochkippen
hochkippen(brick, bpower);

a.power = -  apower;
a.limitValue = kantenlaengeA;

c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = kantenlaengeC;
c.power =  - cpower;
c.start;

a.start;
a.waitFor;
c.waitFor;
a.stop;
c.stop;




% runter kippen
runterkippen(brick, bpower)

% linie 2
a.power = apower;
a.start;
a.waitFor;
a.stop;

% obere horizontale Linie
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = kantenlaengeC;
c.power =  cpower;
c.start;
c.waitFor;
c.stop;


% hochkippen
hochkippen(brick, bpower);


a.power = -  apower;
a.limitValue = kantenlaengeA;

;
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = kantenlaengeC;
c.power =  - cpower;
c.start;

a.start;
a.waitFor;
c.waitFor;
a.stop;
c.stop;

% runter kippen
runterkippen(brick, bpower)

c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = kantenlaengeC;
c.power =  cpower;
c.start;
c.waitFor;
c.stop;


%hochkippen
hochkippen(brick, bpower);


%zurück zum start
a.power = apower;
a.start;
a.waitFor;
a.stop;

%zur neuen pos (auge)
a.power = -  apower;
a.limitValue = Auge1positionA;

;
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = Auge1positionC;
c.power =  - cpower;
c.start;
c.stop;


a.start;
a.waitFor;
c.waitFor;
c.stop;
a.stop;


% runter kippen
runterkippen(brick, bpower)

a.limitValue = 30;
a.power = apower;
a.start;
a.waitFor;
a.stop;

%hochkippen
hochkippen(brick, bpower);


%%auge 2

a.power = apower;
a.limitValue = 20;


c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = Auge1positionC;
c.power =  - cpower;
c.start;

a.start;
a.waitFor;
c.waitFor;
a.stop;
c.stop;


brick.disconnect;


function hochkippen(brick, bpower)
    b = brick.motorB;
    b.brakeMode = 'Brake';
    b.power = -bpower;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 45;
    b.start();
    b.waitFor();
    b.stop
end

function runterkippen(brick, bpower)>
    buttonAngel = brick.sensor4;
    b = brick.motorB;
    b.brakeMode = 'Brake';
    % Stift absetzen
    b.speedRegulation = 1;
    b.power = bpower;
    b.limitMode = 'Tacho' ;  
    b.limitValue = 0;
    b.start();
    while buttonAngel.value == 0
    end
    b.stop;
end