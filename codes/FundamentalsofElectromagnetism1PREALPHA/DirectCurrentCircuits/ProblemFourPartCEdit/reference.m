%% symbolic variables and constants
syms I R V V_bat I1 I2 I3 I4 I5 r R1 R2 R3 R4 R5 
r = 5; % Ohms
R1 = 15; % Ohms
R2 = 10; % Ohms
R3 = 10; % Ohms
R4 = 15; % Ohms
R5 = 5; % Ohms
V_bat = 20; % Volts

R = [[5+15+10 -15 -10]
    [-15 15+5+10 -5]
    [-10 -5 10+5+15]];
V = [20; 0; 0];
I = inv(R)*V;
I1 = I(1)-I(2);
I2 = I(2);
I3 = I(1)-I(3);
I4 = I(3);
I5 = I(2)- I(3);
I_res = [I1 I2 I3 I4 I5];
R_res  = [R1 R2 R3 R4 R5];
P_bat = V_bat*I(1);
P_res = sum(I_res.^2 .* R_res);
Answer = isequaln(P_bat,P_res);

%% Answers
fprintf ( 'The current out of the battery is : %0.2f Amps \n' , I(1));
for n = 1:numel(I_res)
    fprintf ( 'The current through resistor %d', n)
    fprintf ( ' is : %0.2f Amps \n' , I_res(n));
end
fprintf ( 'The total power supplied by the battery is : %0.2f Watts \n' , P_bat);
fprintf ( 'The total power used by the circuit resistors (excluding the battery) is : %0.2f Watts \n' , P_res);
fprintf ( 'The total power used by the circuit resistors (including the battery) is : %0.2f Watts \n' , P_res + I(1)^2*r);