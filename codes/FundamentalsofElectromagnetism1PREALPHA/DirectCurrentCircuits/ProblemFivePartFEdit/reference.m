%% symbolic variables and constants
syms t
R1 = 10e3; % Ohms
R2 = 30e3; % Ohms
V = 24; % Volts
C = 10e-6; % Farads

I0_R2 = V / R2; %% The capacitor acts as a non-resistant wire
Iinf_R2 = V / (R1+R2);
%% The capacitor starts to discharge
I0 = Iinf_R2; %% There is current continuity because of the capacitor 
Iinf = 0;
k = R1*C;
I = Iinf + (I0 - Iinf)*exp(-t/k);
tSol = vpa(solve(I == I0 * .5, t));

fprintf ( 'The initial current through resistor R2 when the switch is closed is : %f Amps \n' , I0);
fprintf ( 'the current through resistor R2 when the capacitor is fully charged, long after the switch is closed is : %d Amps \n' , Iinf);
fprintf ( 'The time for the current through resistor R1 to reach half of its initial value is : %f seconds \n' , tSol);