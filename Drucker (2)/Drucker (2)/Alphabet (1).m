function [vector_array,index, neue_x, start, ziel] = Alphabet(buchstabe,x_koordinate,y_koordinate)

switch buchstabe
    case {'A','a'}
        start = [0,-5];
        ziel = [4,-2.5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate - 5,y_koordinate + 0,0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate - 0,0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate - 5,1];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate - 5,y_koordinate - 0,0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate - 2.5,1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate - 2.5,y_koordinate - 2.5,0];
        index = 6;
        neue_x = x_koordinate + 6;
    case {'B','b'}
        start = [0,-5];
        ziel = [0,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate - 0 ,y_koordinate - 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -1,y_koordinate + -1.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -1.5,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + -2.5,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + -2.5,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate - 3.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -3.5,y_koordinate - 4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -4,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + -5,y_koordinate - 5];
        index = 11;
        neue_x = x_koordinate + 5;
    case {'C','c'}
        start = [4,-1];
        ziel = [4,-4];
        vector_array = [x_koordinate + 4 ,x_koordinate + 3 ,y_koordinate + -1,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 1 ,y_koordinate - 0,y_koordinate - 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate - 4];
        index = 7;
        neue_x = x_koordinate + 5;
    case {'D','d'}
        start = [0,0];
        ziel = [0,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate - 5,y_koordinate - 5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate + -3.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -3.5,y_koordinate - 1.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -1.5,y_koordinate - 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate - 0];
        index = 6;
        neue_x = x_koordinate + 5;
    case {'E','e'}
        start = [4,0];
        ziel = [4,-5];
        vector_array = [x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate - 0 ,y_koordinate - 2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -2.5,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -5,y_koordinate + -5];
        index = 6;
        neue_x = x_koordinate + 5;
    case {'F','f'}
        start = [4,0];
        ziel = [0,-5];
        vector_array = [x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + -2.5 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -2.5,y_koordinate + -5];
        index = 5;
        neue_x = x_koordinate + 5;
    case {'G','g'}
        start = [4,-1];
        ziel = [2,-3];
        vector_array = [x_koordinate + 4 ,x_koordinate + 3 ,y_koordinate + -1 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 1 ,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -3];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -3 ,y_koordinate + -3];
        index = 8;
        neue_x = x_koordinate + 5;
    case {'H','h'}
        start = [0,0];
        ziel = [4,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -2.5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + -5];
        index = 5;
        neue_x = x_koordinate + 5;
    case {'I','i'}
        start = [1,0];
        ziel = [1,-5];
        vector_array = [x_koordinate + 1 ,x_koordinate + 1 ,y_koordinate + 0,y_koordinate + -5];
        index = 1;
        neue_x = x_koordinate + 2;
    case {'J','j'}
        start = [0,0];
        ziel = [0,-4];
        vector_array = [x_koordinate + 0 ,x_koordinate + 3 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 3 ,y_koordinate + 0,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 2 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 1 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 0 ,y_koordinate + -5 ,y_koordinate + -4];
        index = 5;
        neue_x = x_koordinate + 5;
    case {'K','k'}
        start = [0,0];
        ziel = [4,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5 ,y_koordinate + -5];
        index = 5;
        neue_x = x_koordinate + 5;
    case {'L','l'}
        start = [0,-5];
        ziel = [4,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5 ,y_koordinate + 0,0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -5,1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -5,0];
        index = 3;
        neue_x = x_koordinate + 5;
    case {'M','m'}
        start = [0,-5];
        ziel = [6,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 1.5 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1.5 ,x_koordinate + 3 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4.5 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 4.5 ,x_koordinate + 6 ,y_koordinate + 0 ,y_koordinate + -5];
        index = 4;
        neue_x = x_koordinate + 7;
    case {'N','n'}
        start = [0,-5];
        ziel = [4,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + 0];
        index = 3;
        neue_x = x_koordinate + 5;
    case {'O','o'}
        start = [4,-1];
        ziel = [4,-1];
        vector_array = [x_koordinate + 4 ,x_koordinate + 3 ,y_koordinate + -1 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 1 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -4 ,y_koordinate + -1];
        index = 8;
        neue_x = x_koordinate + 5;
    case {'P','p'}
        start = [0,-5];
        ziel = [0,-2.5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -1 ,y_koordinate + -1.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -1.5 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + -2.5 ,y_koordinate + -2.5];
        index = 6;
        neue_x = x_koordinate + 5;
    case {'Q','q'}
        start = [4,-4];
        ziel = [4,-5];
        vector_array = [x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -4 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 3 ,y_koordinate + -1 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 1 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 0 ,y_koordinate + 0 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 3.5 ,y_koordinate + -4 ,y_koordinate + -4.5];
        vector_array = [vector_array; x_koordinate + 3.5 ,x_koordinate + 2 ,y_koordinate + -4.5 ,y_koordinate + -3];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -3 ,y_koordinate + -5];
        index = 11;
        neue_x = x_koordinate + 5;
    case {'R','r'}
        start = [0,-5];
        ziel = [4,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -1 ,y_koordinate + -1.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -1.5 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + -2.5 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -2.5 ,y_koordinate + -5];
        index = 7;
        neue_x = x_koordinate + 5;
    case {'S','s'}
        start = [0,-4];
        ziel = [4,-1];
        vector_array = [x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -4.5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -4.5 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + -4 ,y_koordinate + -1];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + -1 ,y_koordinate + -0.5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -0.5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + 0 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + -1];
        index = 9;
        neue_x = x_koordinate + 5;
    case {'T','t'}
        start = [2,-5];
        ziel = [0,0];
        vector_array = [x_koordinate + 2 ,x_koordinate + 2 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + 0 ,y_koordinate + 0 ];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0  ,y_koordinate + 0 ,y_koordinate + 0];
        index = 3;
        neue_x = x_koordinate + 5;
    case {'U','u'}
        start = [0,0];
        ziel = [4,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 1 ,y_koordinate + -4 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1 ,x_koordinate + 3 ,y_koordinate + -5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -4];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 4 ,y_koordinate + -4 ,y_koordinate + 0];
        index = 5;
        neue_x = x_koordinate + 5;
    case {'V','v'}
        start = [0,0];
        ziel = [4,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + 0];
        index = 2;
        neue_x = x_koordinate + 5;
    case {'W','w'}
        start = [0,0];
        ziel = [6,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 1.5 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 1.5 ,x_koordinate + 3 ,y_koordinate + -5 ,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 3 ,x_koordinate + 4.5 ,y_koordinate + 0 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 4.5 ,x_koordinate + 6 ,y_koordinate + -5 ,y_koordinate + 0];
        index = 4;
        neue_x = x_koordinate + 7;
    case {'X','x'}
        start = [0,0];
        ziel = [4,0];
        vector_array = [x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + -5,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 0 ,y_koordinate + -2.5 ,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + 0];
        index = 4;
        neue_x = x_koordinate + 5;
    case {'Y','y'}
        start = [0,0];
        ziel = [2,-5];
        vector_array = [x_koordinate + 0 ,x_koordinate + 2 ,y_koordinate + 0,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 4 ,y_koordinate + -2.5,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 2 ,y_koordinate + 0 ,y_koordinate + -2.5];
        vector_array = [vector_array; x_koordinate + 2 ,x_koordinate + 2 ,y_koordinate + -2.5 ,y_koordinate + -5];
        index = 4;
        neue_x = x_koordinate + 5;
    case {'Z','z'}
        start = [0,0];
        ziel = [4,-5];
        vector_array = [x_koordinate +  0,x_koordinate +  4,y_koordinate + 0,y_koordinate + 0];
        vector_array = [vector_array; x_koordinate + 4 ,x_koordinate + 0 ,y_koordinate + 0,y_koordinate + -5];
        vector_array = [vector_array; x_koordinate + 0 ,x_koordinate + 4 ,y_koordinate + -5 ,y_koordinate + -5];
        index = 3;
        neue_x = x_koordinate + 5;
    case ' '
        start = [0,0];
        ziel = [0,0];
        vector_array = 0;
        index = 0;
        neue_x = x_koordinate + 6;
end