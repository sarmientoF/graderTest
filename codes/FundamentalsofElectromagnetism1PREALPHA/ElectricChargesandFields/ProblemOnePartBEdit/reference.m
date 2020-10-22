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
syms m l positive
syms th q real
syms ep0 positive
syms g  
 
assume(th>0 & th<pi/2)
K = 1/(4*pi*ep0);
d = l * sin(th);
F_E = K *q^2/(2*d)^2;
 
Eq = F_E == m * g * tan(th);
Eq_sim = simplify(Eq)