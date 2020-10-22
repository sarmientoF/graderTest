%% symbolic variables and constants
syms I1(t) 
syms R1 R2 L V positive

% Differential equation for the RL cirucuit
eqn = diff(I1,t)*L + R2 * I1 == V;
cond = I1(0) == 0;
I1(t) = dsolve(eqn,cond); % Current in R2
I2 = V / R1; % Current in R1
I = I1 + I2; % Current in the battery

% Substitutions
V = 12; % V
R1 = 6; % Ohms
R2 = 6; % Ohms
L = 24; % H

IR1 = subs(I2);
IR2 = subs(I1);
IB = subs(I);

fprintf('The current through R1 is : %0.2f A \n', IR1);
fprintf('The current through R2 is : \n');
pretty(IR2);
fprintf('The current through the battery is : \n');
pretty(IB);