function printing(brick,x,y)
    %y-Achse
    x
    y

     c = brick.motorC;
    a = brick.motorA;
    c.speedRegulation = 0;
    c.limitMode = 'Tacho' ;
    c.limitValue = abs(x)*20;
    
    drehungA = -y*10 % Drehung von Motor A 
    drehungC = x*20 % Drehung von Motor c
    r = drehungC/drehungA;
    turn = -((200*(1-r))/(1+ abs(r)));
    

    % 
    % drehungA = -abs(y)*10 % Drehung von Motor A 
    % drehungC = abs(x)*20 % Drehung von Motor c
    % 
    % if x*20 == -y*10
    %     verhaltnis = 200;
    % else 
    %     verhaltnis = 200 * (drehungC - drehungA) / (drehungC + drehungA);
    % end
    % 
    % if x > 0
    %     if y > 0 
    %         turn = -(verhaltnis)
    %     elseif y<0
    %         turn = (verhaltnis)
    %     end
    %     c.power = -70;
    % elseif x < 0
    %     if y > 0 
    %         turn = (verhaltnis)
    %     elseif y<0
    %         turn = -(verhaltnis)
    %     end
    %     c.power = -70;
    % end
    if x < 0
        c.power = 70;
    else 
        c.power = -70;
    end


    c.syncedStart(a, 'turnRatio', turn);
    c.waitFor;

    % c.speedRegulation = 1;
    % c.limitMode = 'Tacho' ;
    % c.limitValue = abs(x)*20;
    % c.power = -70*(x/betrag);
    % a = brick.motorA;
    % a.speedRegulation = 1;
    % a.limitMode = 'Tacho';
    % y
    % a.limitValue = abs(y)*10;
    % a.power = 20 * (y/betrag);
    % 
    % %x-Achse
    % c = brick.motorC;
    % c.speedRegulation = 1;
    % c.limitMode = 'Tacho' ;
    % c.limitValue = abs(x)*20;
    % c.power = -70*(x/betrag);
    % 
    %   c.start();
    %   a.start();
    %   a.waitFor();
    %   c.waitFor();      
end