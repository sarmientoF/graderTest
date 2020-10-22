%% symbolic variables and constants
syms C emf q dq dt
q0 = 0; % q = v * C

qf = emf * C;
DqDt = dq / dt;
P = emf * DqDt;
dE = P * dt;
E = int(dE/dq, q, q0, qf);
 
fprintf('The total energy supplied by the battery is equal to : %s \n', E);