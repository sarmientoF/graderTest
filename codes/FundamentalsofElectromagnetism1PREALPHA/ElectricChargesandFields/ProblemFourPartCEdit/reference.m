%% symbolic variables and constants
%% Use syms 
syms q dq positive
syms ep0 lambda 
syms l positive 
syms a positive
syms x real 
syms dx real  %% differential coordinate 
syms y real
syms theta real
syms dr r R dtheta

k = 1/(4*pi*ep0);
%% Define object
r(theta) = R; %% Any polar function 
x = r*cos(theta);
y = r*sin(theta);

dq =  lambda *r *dtheta;
dE = k * dq * [x, y] / r^3;

dE1 = simplify(dE);
% dE1 = simplify(dE1,'IgnoreAnalyticConstraints',true);
Ex = int(dE1/ dtheta, theta);
E = subs (Ex, theta, 0) - subs (Ex, theta, pi);
E = simplify(E);

EF = q * E;

fprintf("The electric force on the point charge q is :\n")
pretty(EF)