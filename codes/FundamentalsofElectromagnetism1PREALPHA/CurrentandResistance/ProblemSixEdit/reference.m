%% symbolic variables and constants
syms P V I R Q E T n_e
n_e = Q / 1.6e-19;
P = 100; % Watts
V = 115; % Volts
T = 13 * 60 * 60; % s

I = P /V;
E = P * T;
Q = I * T;
R = V / I;
I = subs(I);
Q = subs(Q);
R = subs(R);
n_e = subs(n_e);
E = subs(E);

fprintf ( 'The current the heater operates at is : %.2f Amps \n' , I);
fprintf ( 'The number of electrons that move through the heater is : %.2e \n' , n_e);
fprintf ( 'The resistance of the heater is : %.2f Ohms \n' , R);
fprintf ( 'The amount of heat added to the dorm room is : %.2e J \n' , E);