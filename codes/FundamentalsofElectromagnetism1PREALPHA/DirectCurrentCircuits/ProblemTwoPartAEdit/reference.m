%% symbolic variables and constants
syms I r V R1 R2 R3 R4 R5 RE_in RE_out positive 
V = 30; % V
r = 1; % Ohms
R1 = 9; % Ohms
R2 = 18; % Ohms
R3 = 10; % Ohms
R4 = 10; % Ohms
R5 = 8; % Ohms

%% Equations 
RE_out = (1/R1 +1/R2)^-1 + (1/R3 + 1/R4)^-1 + R5 ;
RE_in = RE_out + r;
I0 = V / RE_in ; 
I1 = (1/R1 + 1/R2)^-1*I0/R1;
I2 = (1/R1 + 1/R2)^-1*I0/R2;
I3 = (1/R3 + 1/R4)^-1*I0/R3;
I4 = (1/R3 + 1/R4)^-1*I0/R4;
I5 = I0;
Ir = I0;
R = [R1 R2 R3 R4 R5 r];
I = [I1 I2 I3 I4 I5 Ir];
DV = R.*I;
P = DV.*I;
P_bat = sum(P);

%% Answers
fprintf ( 'The equivalent resistance of the circuit is : %0.2f Ohms \n' , RE_in);
fprintf ( 'The current out of the battery is : %0.2f Amps \n' , I0);
for n = 1:numel(I)
    fprintf ( 'The current through resistor %d', n)
    fprintf ( ' is : %0.2f Amps \n' , I(n));
    end
for n = 1:numel(DV)
    fprintf ( 'The potential drop across resistor %d', n)
    fprintf ( ' is : %0.2f Ohms \n' , DV(n));
    end
for n = 1:numel(P)
    fprintf ( 'The power dissipated by resistor %d', n)
    fprintf ( ' is : %0.2f Joules \n' , P(n));
    end
fprintf ( 'The total power supplied by the batteries is : %0.2f Watts \n' , P_bat);