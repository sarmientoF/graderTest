%% symbolic variables and constants
%% Use syms 
syms q dq positive
syms epsilon lambda k
syms l positive 
syms a positive
syms x real 
syms dx real  %% differential coordinate 
syms y real
syms theta real
syms dr r dtheta
%syms dE(x,y) dV(x,y) dq(l,lambda) dx

%% Define object
x = r*cos(theta);
y = r*sin(theta);
dV = k * dq/r;
dE1 = [cos(theta) -sin(theta)/r; sin(theta) cos(theta)/r] * gradient (dV, [r , theta]);
r(theta) = r; %% Any polar function 

dE1 = subs(dE1, dq, lambda *r);
% dE1 = simplify(dE1,'IgnoreAnalyticConstraints',true);
Ex = int(dE1, theta);
E = subs (Ex, theta, 0) - subs (Ex, theta, -pi);
E = simplify(E);

fprintf('The electric field at point P is : \n');
pretty(E)