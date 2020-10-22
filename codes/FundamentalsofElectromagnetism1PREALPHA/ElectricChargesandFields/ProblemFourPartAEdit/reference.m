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

assume(x < a + l)
k = 1/(4*pi*ep0);
%syms dE(x,y) dV(x,y) dq(l,lambda) dx
%% Define object
dq =  lambda *dx;

y = 0;
r = [l+a, 0] - [x, y];
dE = k * dq * r / norm(r)^3;

% dE1 = simplify(dE1,'IgnoreAnalyticConstraints',true);

E = int(dE/ dx, x);
E = subs (E, x, l) - subs (E, x, 0);
E = simplify(E);

EF = E * q;
fprintf("The electric force on the point charge q is :\n")
pretty(EF)