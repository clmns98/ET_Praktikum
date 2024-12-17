%% Aufgabe Zahlendarstellung c)
% Template


%%  ----- MATLAB Calculation -----
 

%% Get two numbers from user dialog
% Tips:
% * use MATLAB command "inputdlg".
% * see MATLAB help for usage and more information.
% * convert the reponse cell array into numbers using "str2double"
%

answer1 = str2double(inputdlg("Enter a number 1"));
answer2 = str2double(inputdlg("Enter a number 2"));



%% Calculate the summation of the two numbers

sum = answer1 + answer2


%% Initialize figures
plot_number_face;   % plot calculator face figure
hold on             % hold on flag to plot more plots into the calculator face figure



%% Calculate pointers to plot
% Tips:
% * for line plotting only the start and end point of the line has to be given
% * the rotated pointers can be easily constructed by a complex number (value and phase)
% * the length of the complex vectors should be different for both pointers and less than one
% * note the number zero is located at the coordinates (x,y) = (0,1) or (0,i) respectively
% * take care to use degrees or radian
% * consider only angles which are related to the exact number position. Angles between two
% numbers should be neglected.
%

einer = sum
while einer >= 10
    einer = einer - 10
end

zehner = sum - einer


%% Plot pointers into the figure
% Tips:
% * for line plotting only the start and end point of the line has to be given
% * use different colors for the pointers
%

winkel_einer = 36 * einer
winkel_zehner = 3.6 * zehner

rad_winkel_einer = einer*2*pi/10
rad_winkel_zehner = zehner*2*pi/100

phasor_einer = exp(-j*(rad_winkel_einer - pi/2));
phasor_zehner = exp(-j*(rad_winkel_zehner - pi/2));

line([real(phasor_einer), 0], [imag(phasor_einer), 0]);
line([0.5*real(phasor_zehner), 0], [0.5*imag(phasor_zehner), 0]);


%% Mindstorms NXT - Control
brick = EV3();
brick.connect('usb');

%%
% *Program the Mindstorms machine*

% a = zehner
a = brick.motorA;
% b = einer
b = brick.motorB;

a.power = 15;
b.power = -40;

a.limitMode = 'Tacho';
b.limitMode = 'Tacho';

a.resetTachoCount;
b.resetTachoCount;

if winkel_einer == 0
    winkel_einer = 360
end

if winkel_zehner == 0
    winkel_zehner = 360
end

a.limitValue = winkel_zehner*(5/3);
b.limitValue = winkel_einer*7;

a.brakeMode = 'brake';
b.brakeMode = 'brake';

a.speedRegulation = 1;
b.speedRegulation = 1;

a.start;
b.start;

pause(8);

a.resetTachoCount;
b.resetTachoCount;

a.power = -15;
b.power = 40;

a.start;
b.start;
pause(8);

brick.disconnect;