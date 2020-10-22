%% symbolic variables and constants
%% Use syms 
syms q dq positive
syms epsilon lambda lambda0 k
syms l positive 
syms a positive
syms x real 
syms dx real  %% differential coordinate 
syms y real
syms theta theta_0 real
syms dr r R dtheta 
%syms dE(x,y) dV(x,y) dq(l,lambda) dx

%% Define object
r(theta) = r; %% Any polar function 
 
x = r*cos(theta);
y = r*sin(theta);
 
lambda = lambda0 * cos(theta);
 
dq =  lambda *r *dtheta;
dE = k * dq * -[x, y] / r^3;
 
dE1 = simplify(dE);
% dE1 = simplify(dE1,'IgnoreAnalyticConstraints',true);
Ex = int(dE1/ dtheta, theta);
E = subs (Ex, theta, theta_0) - subs (Ex, theta, -theta_0);
E = simplify(E);

fprintf('The electric field at the origin is : \n');
pretty(E)