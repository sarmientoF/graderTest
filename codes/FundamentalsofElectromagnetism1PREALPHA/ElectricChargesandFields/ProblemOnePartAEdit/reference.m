%% symbolic variables and constants
%% Equations of static equilibrium
% On axix "X"
% T*sin(theta) = F_E ...(1)
% On axis "Y"
% T*cos(theta) = m*g ...(2)
% Also 
% d = l * sin(th)
% K = 1/(4*pi*ep)
% F_e = K *q^2/(2*l)^2 ...(3)
 
%% Constants and variables 
syms q
m = 5e-3; % kg
l = .5; % m
g = 9.81; % m/s^2
th = 5; % degrees
ep = 8.8541878176e-12; % vacuum permittivity
 
%% Solve equations 
% From equation 1, 2 and 3 
K = 1/(4*pi*ep);
d = l * sind(th);
F_E = K *q^2/(2*d)^2;
 
q_sol = solve(F_E == m*g*tand(th),q);% Find the value of q 
 
% q can be + or -, we need to use only one value
Q  = q_sol(2);
fprintf('The magnitude of Q is : %0.2e C\n', Q);