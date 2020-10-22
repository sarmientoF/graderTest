%% symbolic variables and constants
syms r1 r2 R1 R2 positive

dBdt = 50; % T/s
r1 = 0.1; % m
r2 = 0.2; % m
R1 = 4; % Ohms
R2 = 8; % Ohms

emf1 = dBdt * pi * r1^2;
emf2 = -dBdt * pi * r2^2;
R = [[R1+R2 -R2]
     [-R2 R2+R1]];
V = [emf1 ; emf2];
I = inv(R) * V;

I1 = I(1);
I3 = I(2);
I2 = I1 - I3;
Ifinal = [I1 I2 I3];

fprintf('The currents in the resistors of the circuit are : %f A (top), %f A (middle), and %f A (bottom) \n', Ifinal);