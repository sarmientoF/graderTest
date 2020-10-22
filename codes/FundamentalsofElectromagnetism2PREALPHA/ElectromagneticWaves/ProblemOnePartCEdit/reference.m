%% symbolic variables and constants
syms k lambda
syms f w 
syms A phi 
syms x y z real
syms t real

B0 = 5e-10; % T
k = 3.14e-2; % 1/m
c = 3e+8; % m/s
 
% Electric field
B = B0 * cos(k*z + w*t) * [0 1 0];
direction = [0 0 -1];
E = vpa(cross(B, direction) * c , 4);
 
% Frequency and wavelength
w = c / k;
f = w / (2*pi);
lambda = 2 * pi / k;
 
% Poynting vector
u0 = 4 * pi * 1e-7;
S = vpa(1 / u0 * cross(E,B), 4);
t = 0; % s
z = 0; % m
Savg = vpa(subs(S/2), 4); % int(sin(x)^2, 0 , pi) / pi = 1/2

fprintf('The associated electric field is : \n');
pretty(E);
fprintf('The frequency of the associated wave is : %0.2e Hz \n', f);
fprintf('The wavelength of the associated wave is : %0.2f m \n', lambda);
fprintf('The average Poynting vector (W/m^2) is : \n');
pretty(Savg);