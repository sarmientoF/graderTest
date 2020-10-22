%% symbolic variables and constants
syms V R1 R2 R3 C1 C2 
%% We can see that when the circuit reaches electric equilibrium there will not be any current flowing throw the RC circuit
%% Then the Voltage of the capacitor will be 12 volts 
V = 12;
C1 = 10e-3;
C2 = 4.7e-3;
E_total = 1/2 * (C1+C2) * V^2;
E1 = 1/2 * C1 * V^2;
E2 = 1/2 * C2 * V^2;

fprintf('The energy stored in capacitor one after the switch has been closed for a very long time is : %0.3f Joules \n', E1);
fprintf('The energy stored in capacitor two after the switch has been closed for a very long time is : %0.3f Joules \n', E2);
fprintf('The total energy stored in the system after the switch has been closed for a very long time is : %0.3f Joules \n', E_total);