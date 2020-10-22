%% symbolic variables and constants
syms V_in RL R1 R2 RE_in RE_out positive 

%% Part B
VoutA = R2 * (V_in / (R1 + R2));
VoutB = V_in - V_in/(R1 +(R2^-1 + RL^-1)^-1)*R1;
VoutB = simplify(VoutB);

%% Answers
fprintf ( 'The output voltage of circuit (a) is : \n');
pretty(VoutA);
fprintf ( 'The output voltage of circuit (b) is : \n');
pretty(VoutB);