%% symbolic variables and constants
syms epsilon
syms a positive
q = 4e-6;% C 
p = [0, a, 0; 0,-a, 0]; % coordinates of particles 
Q = [q; -q]; % charges of particles


%% Dipole moment: P = q * r = q * 2 *a 
P = Q(2) * (p(2,:) - p(1,:));
fprintf("The dipole moment (in Coulombs) is :\n")
pretty(vpa(P,3))


%% Torque for E = 4e5i
E1 = 4e5 * [1, 0, 0]; %N/C
T1 = cross(P, E1);
T1 = simplify(T1);
fprintf("The torque (in N m) on this dipole for E = 4e5<strong>i</strong> N/C is :\n")
pretty(vpa(T1,3))


%% Torque for E = -4e5i
E2 = 4e5 * [-1, 0, 0]; %N/C
T2 = cross(P, E2);
T2 = simplify(T2);
fprintf("The torque (in N m) on this dipole for E = -4e5<strong>i</strong> N/C is :\n")
pretty(vpa(T2,3))


%% Torque for E = +4e5j
E3 = 4e5 * [0, 1, 0]; %N/C
T3 = cross(P, E3);
T3 = simplify(T3);
fprintf("The torque (in N m) on this dipole for E = 4e5<strong>j</strong> N/C is :\n")
pretty(vpa(T3,3))


% Torque for E = -4e5j
E4 = 4e5 * [0, -1, 0]; %N/C
T4 = cross(P, E4);
T4 = simplify(T4);
fprintf("The torque (in N m) on this dipole for E = -4e5<strong>j</strong> N/C is :\n")
pretty(vpa(T4,3))
%% The is an error in the book answers for D