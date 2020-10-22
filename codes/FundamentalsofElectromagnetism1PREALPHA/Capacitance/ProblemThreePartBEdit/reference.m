%% symbolic variables and constants
syms k C0
V0 = 45; % V
Vf = 11.5; % V

% Equation of electric field for a parallel plate capacitor of dimensions a x b x d
Q0 = C0 * V0;
Cf = C0 * k;
Qf = Cf * Vf;
 
k = solve(Q0 == Qf, k);
fprintf("The dielectric constant is : %0.3f \n", k)
 
% When the dielectric fills 1/3 of the space 
Vf_pulled = V0 / (2/3 + k*1/3); 
fprintf("The new voltage is : %0.3f Volts \n", Vf_pulled)