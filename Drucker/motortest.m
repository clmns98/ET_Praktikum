brickObj = EV3();
brickObj.connect('usb');

a = brickObj.motorA;
a.power = -2;
a.speedRegulation = 1;
a.limitValue = 0;
a.start;
pause(20);
a.stop;

b = brickObj.motorB;
b.power = 30;
b.limitMode = 'Tacho' ;  
b.limitValue = 45;
b.stop;
b.start();
pause(10);
b.power = -30;
b.stop;
b.start();
pause(10);

c = brickObj.motorC;
c.power = 100;
c.limitMode = 'Tacho' ;  
c.limitValue = 45;
c.stop;
c.start();
pause(10);
c.power = -30;
c.stop;
c.start();
pause(10);
brickObj.disconnect;