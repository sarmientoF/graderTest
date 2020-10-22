%% symbolic variables and constants
syms q(t) 
syms V c R L positive

% Initial conditions
q0 = 8e-3; % C
I0 = 0; % A

% Differential equation for circuit
eqn = diff(q,t,2) * L + q / c + R*diff(q,t)== 0;
Dq = diff(q,t);
cond = [q(0)==q0, Dq(0)==I0];
qSol(t) = dsolve(eqn,cond);

% Substitutions
R = 7; % Ohms
L = 10e-3; % H
c = 3e-6; % F
w = 1 / sqrt(L * c);
T = 2 * pi / w;

q_5 = subs(qSol(5*T));
q_50 = subs(qSol(50*T));

fprintf('The charge on the capacitor five cycles later is : %0.2e C \n', q_5);
fprintf('The charge on the capacitor fifty cycles later is : %0.2e C \n', q_50);