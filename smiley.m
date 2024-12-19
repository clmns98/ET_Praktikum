brick = EV3();
brick.connect('usb');

kalibrierung(brick);
buttonAngel = brick.sensor4;

%Papier richtig positionieren
b = brick.motorB;
b.brakeMode = 'Brake';
b.power = -20;
b.limitMode = 'Tacho' ;  
b.limitValue = 45;
b.start();
b.waitFor();

a = brick.motorA;
c = brick.motorC;

a.power =  - 20;
a.limitValue = 100;
a.start;
a.waitFor;

% Stift absetzen
b.power = 40;
b.limitMode = 'Tacho' ;  
b.limitValue = 0;
b.start();
while buttonAngel.value == 0
end
b.stop;

a.power = 20;
a.start;
a.waitFor;

% hochkippen
b.power = -20;
b.limitMode = 'Tacho' ;  
b.limitValue = 45;
b.start();
b.waitFor();

a.power =  - 20;
a.limitValue = 100;

c = brick.motorC;
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = 200;
c.power = - 70;
c.start;

a.start;
a.waitFor;
c.waitFor;

% runter kippen
b.power = 40;
b.limitValue = 0;
b.start();
while buttonAngel.value == 0
end
b.stop;

% linie 2
a.power = 20;
a.start;
a.waitFor;

% obere horizontale Linie
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = 200;
c.power = 70;
c.start;
c.waitFor;

% hochkippen
b.power = -20;
b.limitMode = 'Tacho' ;  
b.limitValue = 45;
b.start();
b.waitFor();

a.power =  - 20;
a.limitValue = 100;

c = brick.motorC;
c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = 200;
c.power = - 70;
c.start;

a.start;
a.waitFor;
c.waitFor;

c.speedRegulation = 1;
c.limitMode = 'Tacho' ;
c.limitValue = 200;
c.power = 70;
c.start;
c.waitFor;