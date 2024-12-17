%% Aufgabe Motormessungen
clc
clear all;

%% Open Bluetooth/USB connetion
brick = EV3();
brick.connect('usb');

%% Create motor object

c = brick.motorC;

%% Do three measurements
c.limitMode = 'Tacho';
c.limitValue = 1000;

% in breakmode the motor forces a stop when it reaches limitValue
c.brakeMode = 'Coast';

c.power = 30;
tic;
c.start();

messwerte30 = [];
while toc < double(6)
    messwerte30 = [messwerte30; [toc, double(c.tachoCount), double(c.isRunning)]];
end

c.power = 50;
c.resetTachoCount();

tic;
c.start();

messwerte50 = [];
while toc < double(6)
    messwerte50 = [messwerte50; [toc, double(c.tachoCount), double(c.isRunning)]];
end

c.power = 70;
c.resetTachoCount();
tic;
c.start();
messwerte70 = [];
while toc < double(6)
    messwerte70 = [messwerte70; [toc, double(c.tachoCount), double(c.isRunning)]];
end


%% Close NXT
brick.disconnect;


%% Plot graphs
figure(1);
plot(messwerte30(:,1), messwerte30(:,2), 'LineWidth', 2);
hold on;
plot(messwerte50(:,1), messwerte50(:,2), 'LineWidth', 2);
plot(messwerte70(:,1), messwerte70(:,2), 'LineWidth', 2);
xlim([0,6]);
xlabel("Zeit");
ylabel("Winkel");
hold on;
yline(1000);
legend('Power 30','Power 50','Power 70','Sollwert');
figure(2);
plot(messwerte30(:,1), messwerte30(:,3), 'LineWidth', 2);
hold on;
plot(messwerte50(:,1), messwerte50(:,3), 'LineWidth', 2);
plot(messwerte70(:,1), messwerte70(:,3), 'LineWidth', 2);
title("Is Running");
legend('Power 30','Power 50','Power 70');
ylim([-0.5,1.5]);