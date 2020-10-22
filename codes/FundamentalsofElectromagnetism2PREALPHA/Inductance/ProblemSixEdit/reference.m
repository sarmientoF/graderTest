%% symbolic variables and constants
syms x(t) v(t) v
syms m R g a b B

% Differential equation for circuit
emf = B * a * diff(x,t);
I = emf /R;
F_mag = I * a * B;
eqn = diff(x,t,2) * m == -F_mag + m*g;
Dx = diff(x,t);
cond = [x(0)==0, Dx(0)==0];
xSol(t) = simplify( dsolve(eqn,cond) );
x_ans = xSol(t);

% Substitutions
m = 100e-3; % kg
R = 0.2; % Ohms
B = 3; % T
g = 9.8; % m/s^2
a = 25e-2; % m
b = 50e-2; % m

x(t) = subs(xSol);
v(t) = diff(xSol);
v = simplify(v(t));
tt = subs(solve(x == b,t));

fprintf('The expression for the speed when the loop just exits the region of uniform magnetic field is : \n');
pretty(v);
fprintf('The time when it exits the region of the magnetic field is : %0.2f s \n', tt);