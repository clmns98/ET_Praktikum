function clapsensor()
% open a new object
ev3_obj=EV3();
ev3_obj.connect('usb','beep','on');

% set mode to dB
ev3_obj.sensor1.mode = DeviceMode.NXTSound.DB;

% clap detection threshold
clapThreshold = 10;
numSamples = 15;

% initialize sample array and state of lamps
values = zeros(numSamples, 1);
changes = zeros(numSamples - 1, 1);
states = [0 0 0];

% initially, create the figure without data, all lamps off
plot_handles = []; % will be initiliazed by clapsensorPlot
plot_handles = clapsensorPlot(plot_handles, values, values, [0 0 0], 0);

max_iterations = 100;
iterations = 0;

states(3) = 1;

while iterations < max_iterations  && isvalid(plot_handles.h_fig)
% start loop
    iterations = iterations + 1;
    
    % get a new sample from the sensor    
    s = ev3_obj.sensor1.value;
    
    % throw away oldest sample and add the new one at the end
    values = [values(2:15);s];
    changes = diff(values);
    
    counter = 0;

    for i = 1:length(values)
        if values(i)>= clapThreshold
            counter = counter +1;
        end
    end

    if counter >= 2
        states(1) = 1;
    end
    if counter >= 1
        states(2) = 1;
    else
        states(2) = 0;
        states(1) = 0;
    end

    % if s >= clapThreshold
    %     ev3_obj.beep();
    % end

    % display plot and lamps
    clapsensorPlot(plot_handles, values, changes, states, clapThreshold);
    
    % wait 10ms between samples
    pause(0.01);
end

% close object
ev3_obj.disconnect();
end
