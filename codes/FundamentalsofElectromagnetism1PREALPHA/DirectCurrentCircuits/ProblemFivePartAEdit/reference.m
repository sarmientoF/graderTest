%% symbolic variables and constants
syms R C E t q(t)
E = 6.16; % V
R = 500; % Ohms
C = 1.5e-6; % Farads

k = R*C; 

%% By solving differential equations
ode = diff(q,t)*R+q/C == E;
cond = q(0) == 0;
qSol(t) = dsolve(ode,cond);
I(t) = diff(qSol);

% Answers
I_initial = I(0);
I_k = I(k);
V_k = qSol(k)/C;

fprintf ( 'The initial current is : %.2e Amps \n' , I_initial);
fprintf ( 'The RC time constant (k) is : %.2e seconds \n' , k);
fprintf ( 'The current after one time constant is : %.2e Amps \n' , I_k);
fprintf ( 'The voltage on the capacitor after one time constant is : %.2f Volts \n' , V_k );