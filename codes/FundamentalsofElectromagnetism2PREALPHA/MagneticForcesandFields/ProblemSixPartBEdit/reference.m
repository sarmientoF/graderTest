%% symbolic variables and constants
syms th dth 

R = 10e-2; % m
I = 5; % A
B = 0.2; % T
U0 = 0; % For th = 90 degress 

A = pi * R^2;
mdm = I * A;
Torque = mdm * B * sin(th);
dW = -Torque * dth;
dU = dW;
U = U0 + int(dU/dth, th);

th = pi/6;
Torque = subs(Torque);
U = subs(U);

fprintf('The magnetic dipole moment of the loop is : %.3f Am^2 \n', mdm)
fprintf('The magnitude of the torque on the loop is : %.3f  Nm \n', Torque )
fprintf('The potential energy of the dipole is : %.3f J \n', U )