%% symbolic variables and constants
syms Cf Vf
ep0 = 8.8541878176e-12;
C0 = 3e-6;
Q0 = 9e-6;
d = 2e-3;
k = 5;

% Equation of electric field for a parallel plate capacitor of dimensions a x b x d
% For this case the charge remains constant, then  Q0 = Qf,  Q0 = C0 * V0;
Cf = C0 * k; % The final capacity is proportional to the dielectric constant
Qf = Cf * Vf;
 
Vf = solve(Q0 == Qf, Vf);
 
V0 = Q0/C0;
E0 = V0/d;
Ef = Vf/ d;
 
fprintf ( 'The potential difference between the plates of the capacitor before the dielectric has been inserted is : %d Volts \n' ,V0);
fprintf ( 'The potential difference between the plates of the capacitor after the dielectric has been inserted is : %0.1f Volts \n' ,Vf);
fprintf ( 'The electric field between the plates of the capacitor before the dielectric has been inserted is : %d V/m \n' ,E0);
fprintf ( 'The electric field between the plates of the capacitor after the dielectric has been inserted is : %d V/m \n' ,Ef);