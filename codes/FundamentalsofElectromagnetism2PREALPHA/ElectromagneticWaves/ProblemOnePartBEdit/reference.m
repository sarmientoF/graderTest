%% symbolic variables and constants
syms k lambda
syms f w 
syms A phi 
syms x y z real
syms t real

u0 = 4 * pi * 1e-7;

% Fields
E = 6e-3 * sin(2*pi*(x/18 -t/6e-8)) * [0 1 0];
X = [x y z];
dBdt = -curl(E,X);
B = int(dBdt, t);
 
% Poynting vector
S = 1 / u0 * cross(E,B);

fprintf('The associated magnetic field is : \n');
pretty(vpa(B,3));
fprintf('The Poynting vector is : \n');
pretty(vpa(S,3));