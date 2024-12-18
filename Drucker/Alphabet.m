function [vector_array, index, neue_x, neue_y] = Alphabet(buchstabe,x_koordinate,y_koordinate)

switch buchstabe
    case {'A','a'}
        liftPen([x_koordinate,y_koordinate], [0,-5]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 2.5 ,y_koordinate - 5,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2.5 ,x_koordinate + 5 ,y_koordinate + 0,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 5 ,x_koordinate + 3.75 ,y_koordinate - 5,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 3.75 ,x_koordinate + 1.25 ,y_koordinate - 2.5,y_koordinate - 2.5];
        index = 4;
        neue_x = x_koordinate + 6;
        neue_y = y_koordinate;
        liftPen([1.25,-2.5], [neue_x,neue_y])
    case {'B','b'}
        liftPen([x_koordinate,y_koordinate], [0,-5]);
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
        liftPen([x_koordinate,y_koordinate], [4,-4]);
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
        liftPen([x_koordinate,y_koordinate], [0,0]);
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
        liftPen([x_koordinate,y_koordinate], [4,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate - 5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        index = 4;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'F','f'}
        liftPen([x_koordinate,y_koordinate], [4,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        index = 3;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'G','g'}
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case {'H','h'}
        liftPen([x_koordinate,y_koordinate], [0,0]);
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + -5];
        index = 3;
        neue_x = x_koordinate + 5;
        neue_y = y_koordinate;
    case {'I','i'}
        liftPen([x_koordinate,y_koordinate], [3,0]);
        vector_array = [x_koordinate + 2 ,x_koordinate + 2 ,y_koordinate + 0,y_koordinate + -5];
        index = 3;
        neue_x = x_koordinate + 4;
        neue_y = y_koordinate;
    case {'J','j'}
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case 'K'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'L'
        liftPen([x_koordinate,y_koordinate], [0,0]);

    case 'M'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'N'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'O'
        liftPen([x_koordinate,y_koordinate], [4,-1]);
    case 'P'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'Q'
        liftPen([x_koordinate,y_koordinate], [4,-4]);
    case 'R'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'S'
        liftPen([x_koordinate,y_koordinate], [0,-4]);
    case 'T'
        liftPen([x_koordinate,y_koordinate], [2,-5]);
    case 'U'
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case 'V'
        liftPen([x_koordinate,y_koordinate], [0,-5]);
    case 'W'
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case 'X'
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case 'Y'
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case 'Z'
        liftPen([x_koordinate,y_koordinate], [0,0]);
    case ' '
        liftPen([x_koordinate,y_koordinate], [0,0]);
        vector_array = 0;
        index = 0;
        neue_x = x_koordinate + 6;
        neue_y = y_koordinate;
end

