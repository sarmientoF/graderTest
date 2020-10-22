%% symbolic variables and constants
ep0 = 8.8541878176e-12;
V0 = 50; % V
a =25e-2; % m
b = 25e-2; % m
d0 = 1e-3; % m
df = 2e-3; % m

% Equation of electric field for a parallel plate capacitor of dimensions a x b x d
C0 = ep0 *a* b /d0;
Cf = ep0 *a* b/df;
En0 = 1/2 * C0 * V0^2;
Enf = 1/2 * Cf * V0^2;

%% Using the real values of the variables and constants 
fprintf ( 'The energy stored in the capacitor before the plates are pulled farther apart is : %1.2e J \n' ,En0);
fprintf ( 'The energy stored in the capacitor after the plates are pulled farther apart is : %1.2e J \n' ,Enf);