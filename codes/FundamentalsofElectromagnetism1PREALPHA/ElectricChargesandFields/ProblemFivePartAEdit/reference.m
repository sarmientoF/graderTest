%% symbolic variables and constants
% For the point P1
%% Use syms 
syms q dq positive
syms epsilon lambda k
syms L positive 
syms a positive
syms p_x real
syms p_y real%% goal
syms x real 
syms dx real  %% differential coordinate 
syms y real
%syms dE(x,y) dV(x,y) dq(l,landa) dx

%% Define object
dq =  lambda *dx;
% dV = k * dq/norm([px-x, py-y]);
% dE = -gradient (dV, [px, py]);
% px = 0;
% py = a;
r = [0, a/2] - [x, y];
dE2 = k * dq * r / norm(r)^3;
y = 0;
 
dE2 = simplify(dE2);
%dE2 = simplify(dE2,'IgnoreAnalyticConstraints',true);
 
Ex = int(dE2/ dx, x);
E2 = subs (Ex, x, L/2) - subs (Ex, x, -L/2);
Ea = simplify(E2);

fprintf('The electric field at the first point is : \n');
pretty(Ea)
 
%% For the point P2
%% Use syms 
syms q dq positive
syms epsilon lambda k
syms L positive 
syms a positive
syms p_x real
syms p_y real%% goal
syms x real 
syms dx real  %% differential coordinate 
syms y real
assume(x < a + L)

%% Define object
dq =  lambda *dx;
 
% dV = k * dq/norm([px-x, py-y]);
% dE = -gradient (dV, [px, py]);
% px = l+a;
% py = 0;
 
r = [L+a, 0] - [x, 0];
dE1 = k * dq * r / norm(r)^3;
y = 0;
 
dE1 = simplify(dE1);
%dE1 = simplify(dE1,'IgnoreAnalyticConstraints',true);
 
Ex = int(dE1/ dx, x);
E1 = subs (Ex, x, L) - subs (Ex, x, 0);
Eb = simplify(E1);

fprintf('The electric field at the second point is : \n');
pretty(Eb)