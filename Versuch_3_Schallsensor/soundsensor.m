function [values] = soundsensor()
    myev3 = EV3();
    myev3.connect('usb');
    myev3.sensor1.mode = DeviceMode.NXTSound.DB;
    values = [];
    max = 1000;
    for i=1:max
        values(i) = myev3.sensor1.value;
    end
    myev3.disconnect();

    plot(1:max, values)
end