brick = EV3();
brick.connect('usb');

c = brick.motorC;
sens = brick.sensor1;

c.resetTachoCount;
c.power = 70;
c.start();
tic;
while sens.value == 0
    c.tachoCount
end
toc

c.stop
brick.disconnect;