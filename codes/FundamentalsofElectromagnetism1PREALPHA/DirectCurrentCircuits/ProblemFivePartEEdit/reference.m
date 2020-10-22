%% symbolic variables and constants
syms V0 R C V t
V1 = 24; % Volts
V2 = 24; % Volts
R1 = 10e3; % Ohms
R2 = 10e3; % Ohms
R3 = 30e3; % Ohms
R4 = 30e3; % Ohms
C1 = 100e-3; % Farads
 
R_eq = R4 + (1/R2 + 1/(R1 + R3))^-1;
 
k = C1 * R_eq;
 
I0 = (V1 + V2) / R_eq;
Iinf = 0;
I(t) = Iinf +(I0 -Iinf)*exp(-t/k);
tSol = vpa(solve(I == I0 * .5, t));
 
fprintf ( 'The RC time constant (k) of the circuit is : %d seconds \n' , k);
fprintf ( 'The initial current in the circuit once the switch is closed is : %.5f Amps \n' , I0);
fprintf ( 'The time betwwen the instant the switch is closed and the time \n   the current has reached half of the initial current is : %.3f seconds \n', tSol);