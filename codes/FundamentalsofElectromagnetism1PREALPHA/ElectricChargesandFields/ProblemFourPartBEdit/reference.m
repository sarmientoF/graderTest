%% symbolic variables and constants
%% Use syms 
syms q dq positive
syms ep0 lambda
syms l positive 
syms a positive
syms p_x real
syms p_y real%% goal
syms x real 
syms dx real  %% differential coordinate 
syms y real

k = 1/(4*pi*ep0);
%% Define object
dq =  lambda *dx;
% dV = k * dq/norm([p_x-x, p_y-y]);
% dE = -gradient (dV, [p_x, p_y]);
% p_x = 0;
% p_y = a;
y = 0;
r = [0, a] - [x, y];
dE = k * dq * r / norm(r)^3;

% dE = eval(dE);
% dE = simplify(dE,'IgnoreAnalyticConstraints',true);

E = int(dE/ dx, x);
E = subs (E, x, l/2) - subs (E, x, -l/2);
E = simplify(E);

EF = q * E;

fprintf("The electric force on the point charge q is :\n")
pretty(EF)