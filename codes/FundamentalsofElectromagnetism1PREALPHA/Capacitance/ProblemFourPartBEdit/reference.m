%% symbolic variables and constants
ep0 = 8.8541878176e-12;
C0 = 5.0e-6; % F
V0 = 12;  % V
DfD0 = 3; % ratio of separation of plates

% Equation of electric field for a parallel plate capacitor of dimensions a x b x d
Cf = C0 / DfD0;
Q0 = C0 * V0;
Qf = Q0;
 
En0 = 1/2 * Q0^2 / C0;
Enf = 1/2 * Qf^2 / Cf;
DEn = Enf - En0;

%% Using the real values of the variables and constants 
fprintf ( 'The minimum work required to increase the separation is : %0.1e J \n' ,DEn);