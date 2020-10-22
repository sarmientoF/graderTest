%% symbolic variables and constants
syms v c positive
 
Dt = 2065; % s
Dt0 = 900; % s
RE = 939.6; % Mev

gamma = sqrt(1/(1 - (v/c)^2));
v = solve(gamma == Dt / Dt0, v);
gamma = subs(gamma,v);
KE = (gamma-1) * RE; 
KE = vpa(KE); %MeV

fprintf('The kinetic energy, in MeV, of the neutron is : %0.3f MeV \n', KE);