%% symbolic variables and constants
syms x y C u0
syms a1 a2 b1 b2 positive

B = [x/y^2 1/y]*C;
I = ( int(subs(B,x,a1)*[0 1]',y,[b1 b2]) ...
    + int(subs(B,y,b2)*[1 0]',x,[a1 a2]) ...
    + int(subs(B,x,a2)*[0 1]',y,[b2 b1]) ...
    + int(subs(B,y,b1)*[1 0]',x,[a1 a2]) ) / u0 ;
I = simplify(I);

fprintf('The current through the rectangle is : \n');
pretty(I)