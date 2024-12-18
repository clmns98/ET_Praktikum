brickObj = EV3();
brickObj.connect('usb');

% a = brickObj.motorA;
% a.power = -2;
% a.speedRegulation = 1;
% a.limitValue = 0;
% a.start;
% pause(20);
% a.stop;

% b = brickObj.motorB;
% b.power = 30;
% b.limitMode = 'Tacho' ;  
% b.limitValue = 45;
% b.stop;
% b.start();
% pause(10);
% b.power = -30;
% b.stop;
% b.start();
% pause(10);

c = brickObj.motorC;
c.power = 30;
c.limitMode = 'Tacho' ;  
c.limitValue = 718.5*3;
c.stop;
c.start();
c.waitFor();
pause(10);
c.power = -30;
c.stop;
c.start();
c.waitFor();
brickObj.disconnect;