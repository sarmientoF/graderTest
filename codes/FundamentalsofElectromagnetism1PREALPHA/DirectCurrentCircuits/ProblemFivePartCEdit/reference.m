%% symbolic variables and constants
syms I0 R C D t
R = 20; % Ohms
C = 20e-3; % Farads
D = 1.5; % Volts

Ceq = 3*C;
k = R*Ceq; %%  RC constant
I0 = D/R;
Iinf = 0; %% The capacitor is completely charged so 
I = Iinf +(I0 - Iinf)*exp(-t/k);
tSol = vpa(solve(I == I0/2,t)); %% time to reduce to 50%


fprintf ( 'The equivalent capacitance of the circuit is : %.4f Farads \n' , Ceq);
fprintf ( 'The RC time constant (k) is : %.2f seconds \n' , k);
fprintf ( 'The time to decreases to 50 percent of the initial current value once the switch is closed is : %.4f seconds \n' , tSol);