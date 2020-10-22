m = 1100;         % kg
k = 570;          % N/m
c = 430;          % N-s/m

tVec = 0:0.1:50;  % Discrete time interval, s

% Convert to a system of 1st order ODEs and solve.
syms x(t)

% Convert higher order ode to vector of 1st order odes
[V] = odeToVectorField(m*diff(x,2) + c*diff(x) + k*x == 0);
% Convert symbolic vector to a MATLAB function
M = matlabFunction(V,'vars', {'x','Y'});

% Solve system of equations
[t,msdX] = ode45(M,tVec,[0.05 0]);