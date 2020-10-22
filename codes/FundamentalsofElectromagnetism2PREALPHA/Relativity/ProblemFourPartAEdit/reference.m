%% symbolic variables and constants
 
gamma = 1e+5;
me = 9.1E-31; % kg
c = 3e+8; % m/s
eV = 1.6e-19; % C

KE = me * c^2 * (gamma-1) / eV; % KE = Q * V
KE = vpa(KE/1e9); % GeV
TE = me * c^2 * gamma  /eV; % Total energy in eV
TE = vpa(TE/1e+9); % GeV

fprintf('The effective accelerating potential for electrons at SLAC is : %0.3f GeV \n', KE);
fprintf('The effective total energy of electrons at SLAC is : %0.3f GeV \n', TE);