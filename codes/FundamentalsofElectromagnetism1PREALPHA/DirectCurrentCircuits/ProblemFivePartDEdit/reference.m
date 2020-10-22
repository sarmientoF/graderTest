%% symbolic variables and constants
syms V0 R C V t
R = 100; % Ohms
C = 10e-3; % Farads
V = 1.5; % Volts

%% For the parallel capacitors
Ceq = 6*C;
k0 = R*Ceq;
Ip = 4*V/R;

Q0Paral = 0;
QinfParal = Ceq * 4*V;
Q = QinfParal + (Q0Paral - QinfParal)*exp(-t/k0);
tSol_charge = solve(Q == .9 * QinfParal,t);

fprintf ( 'The RC time constant (k) is : %.2f seconds \n' , k0);
fprintf ( 'The initial current out of the batteries while they are connected in parallel is : %.2f Amps \n' , Ip);
fprintf ( 'The time for the capacitors to charge to 90 percent is : %.2f seconds \n' , tSol_charge);
 
%% For the series configuration 
Ceq = C/6;
kf = R*Ceq;
Q0Serie = .9*QinfParal;
QinfParal = Ceq * 4*V;
Q = QinfParal + (Q0Paral - QinfParal)*exp(-t/kf);
I = diff(Q,t);
Is = (0.9)*4*V/R;
tSol_discharge = solve(I == .1 * Is,t);

fprintf ( 'The RC time constant (k) is : %.2f seconds \n' , kf);
fprintf ( 'The initial current in the capacitors connected in series is : %.4f Amps \n' , Is);
fprintf ( 'The time for the current to decrease to 10 percent is : %.3f seconds \n' , tSol_discharge);