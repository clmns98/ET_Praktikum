brick = EV3();
brick.connect('usb');
a = brick.motorA;
a.limitValue = 360*0.454725*0.5;
c = brick.motorC;
c.limitValue = 360*0.9*0.5;
a.power = -20;
c.power = -10;
c.speedRegulation = 1;
a.start;
c.start;
a.waitFor;
c.waitFor;


% for i = 1 : 10
%     a.power = -i*10;
%     tic;
%     a.start();
%     a.waitFor;
%     toc
%     if toc < 1.170817
%         brick.disconnect;
%         return
%     end
%     a.power = i*10;
%     a.start();
%     a.waitFor;
% end
brick.disconnect;


    
