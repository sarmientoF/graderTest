%% symbolic variables and constants
syms I A R B0 th positive

B = [1 0 0]*B0;
A = [cos(th) sin(th) 0]*pi*R^2; %% th is the angle between A and B
mdm = I * A;
Torque = cross(mdm , B);
Torque = simplify(norm(Torque));

fprintf('The magnitude of the torque on the ring is : \n');
pretty(Torque)