function [vector_array,motor_array, index, neue_x, neue_y] = Alphabet(buchstabe,x_koordinate,y_koordinate,brick)

switch buchstabe
    case {'A','a'}
        %liftPen(brick, [0,-5]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 2.5 ,y_koordinate - 5,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2.5 ,x_koordinate + 5 ,y_koordinate + 0,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 5 ,x_koordinate + 3.75 ,y_koordinate - 5,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 3.75 ,x_koordinate + 1.25 ,y_koordinate - 2.5,y_koordinate - 2.5];
        motor_array = [2.5,5];
        motor_array = [motor_array;2.5,5];
        motor_array = [motor_array;-1.25,2.5];
        motor_array = [motor_array;-2.5,0];
        index = 4;
        neue_x = x_koordinate + 6;
        neue_y = y_koordinate;
        %returnPen([1.25,-2.5])
    case {'B','b'}
        liftPen(brickObj, [0,-5]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate - 5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate - 1];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate - 1.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate - 3.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate - 4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -1,y_koordinate - 1.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -3.5,y_koordinate - 4];
        index = 10;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'C','c'}
        liftPen(brickObj, [4,-4]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate - 4,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -1,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate - 1];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate - 4];
        index = 7;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'D','d'}
        liftPen(brickObj, [0,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate - 5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate - 1.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate - 3.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -1.5,y_koordinate - 3.5];
        index = 6;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'E','e'}
        liftPen(brickObj, [4,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate - 5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        index = 4;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'F','f'}
        liftPen(brickObj, [4,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        index = 3;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'G','g'}
        liftPen(brickObj, [0,-5]);
    case {'H','h'}
        liftPen(brickObj, [0,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + -5];
        index = 3;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'I','i'}
        liftPen(brickObj, [3,0]);
        vector_array = [x_koordinate + 2 ,x_koordinate + 2 ,y_koordinate + 0,y_koordinate + -5];
        index = 3;
        neue_x = x_koordinate + 4;
        neue_y = y_koordinate;
    case {'J','j'}
        liftPen(brickObj, [0,0]);
    case 'K'
        liftPen(brickObj, [0,-5]);
    case 'L'
        liftPen(brickObj, [0,0]);

    case 'M'
        liftPen(brickObj, [0,-5]);
    case 'N'
        liftPen(brickObj, [0,-5]);
    case 'O'
        liftPen(brickObj, [4,-1]);
    case 'P'
        liftPen(brickObj, [0,-5]);
    case 'Q'
        liftPen(brickObj, [4,-4]);
    case 'R'
        liftPen(brickObj, [0,-5]);
    case 'S'
        liftPen(brickObj, [0,-4]);
    case 'T'
        liftPen(brickObj, [2,-5]);
    case 'U'
        liftPen(brickObj, [0,0]);
    case 'V'
        liftPen(brickObj, [0,-5]);
    case 'W'
        liftPen(brickObj, [0,0]);
    case 'X'
        liftPen(brickObj, [0,0]);
    case 'Y'
        liftPen(brickObj, [0,0]);
    case 'Z'
        liftPen(brickObj, [0,0]);
    case ' '
        liftPen(brickObj, [0,0]);
        vector_array = 0;
        index = 0;
        neue_x = x_koordinate + 6;
        neue_y = y_koordinate;
end

