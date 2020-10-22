%% symbolic variables and constants
syms u0 I a z N ep0 l w b c V L d
syms dI dB dz
syms R positive

C = ep0 * 2 * pi * L / log(d/a);
Q = C * V;
I =  Q / (2*pi) * w;
I1 = I; 
I2 = I;

% For r < a 
I_a = 0*I1 + 0 * I2;
B_a =u0 * I_a / 2 / L;
fprintf('The magnitude of the magnetic field at a point inside the space enclosed by the inner tube is : \n');
pretty(B_a);
 
% For b < r < c 
I_b = 1*I1 + 0 * I2;
B_b =u0 * I_b / 2 / L;
fprintf('The magnitude of the magnetic field at a point between the tubes is : \n');
pretty(B_b); 

% For r > d 
I_c = 1 * I1 + (-1) * I2;
B_c =u0 * I_c / 2 / L;
fprintf('The magnitude of the magnetic field at a point outside the tubes is : \n');
pretty(B_c); 