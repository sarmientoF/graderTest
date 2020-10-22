%% symbolic variables and constants
syms I r R1 R2 R3 R5 r1 r2 r3 r4 e1 e2 e3 e4
R1 = 5; % Ohms
R2 = 40; % Ohms
R3 = 78; % Ohms
R5 = 20; % Ohms
r1 = .1; % Ohms
r2 = .5; % Ohms
r3 = .05; % Ohms
r4 = .2; % Ohms
e1 = 24; % Volts
e2 = 48; % Volts
e3 = 6; % Volts
e4 = 36; % Volts

%% Using matrixes to solve the circuit, we can find the I for each grid 
R = [[R3+R2+r2+r4+r3 -r2-R2];
    [-r2-R2 R1+r1+R5+R2+r2]];
V = [e3+e2-e4; e1-e2];
I = inv(R)*V;
I1 = I(2);
I3 = I(1);
I2 = I3-I1;
Ia = [I1 I2 I3];

for i = 1:numel(Ia)
    fprintf ( 'The current I%i is : %.2f Amps \n' , i,Ia(i));
end