%% symbolic variables and constants
syms I A B

A = [0 0 1]*10e-4; % m^2
I = 25; % A
B = [2 6 8]*1e-3; % T

mdm = A * I;
Torque = cross(mdm, B);

fprintf('The magnetic dipole moment of the loop is : %0.2e<strong>k</strong> Am^2 \n', mdm(3))
fprintf('The torque on the loop is : %.2e<strong>i</strong> %.2e<strong>j</strong> %.2e<strong>k</strong> Nm \n', Torque)