%% Aufgabe Motormessungen
clc
clear all;

%% Open Bluetooth/USB connetion
brick = EV3();
brick.connect('usb');

a = brick.motorB;
a.power = 30;

a.limitValue = 360*7;
% a.TachoLimit = 50;
a.speedRegulation = 1;
a.smoothStart = 0;
a.brakeMode = 'brake';
a.start;
pause(20);

brick.disconnect;