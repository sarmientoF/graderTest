%% symbolic variables and constants
syms I V R P_R P_B

I = V/R;
P_R = V*I;% from the resistor
P_B = V*I; % From the battery

% For this circuit R there is no loss of energy because the battery and
% resistor received the same differece of potential and current
V = 20; % V
R = 10e3; % Ohms

I = subs(I);
P_R = subs(P_R);
P_B = subs(P_B);

% Display results
fprintf ( 'the current through the resistor is : %0.3f Amps \n' , I);
fprintf ( 'the power dissipated by the resistor is : %0.2f Watts \n' , P_R);
fprintf ( 'The power input from the battery is : %0.2f Watts \n' , P_B);