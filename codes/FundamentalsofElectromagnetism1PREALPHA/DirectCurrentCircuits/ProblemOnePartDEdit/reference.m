%% symbolic variables and constants
I = 10; % A
t = 5e-3; % s
P = 500; % J

Q = I*t;
V = P/I;
R = V/I;

fprintf ( 'The amount of charge that passed is : %0.2f Coulombs \n' , Q);
fprintf ( 'The amount of applied voltage when 500 J of energy was dissipated is : %0.1f Volts \n' , V);
fprintf ( 'The path’s resistance is : %d Ohms \n' , R);