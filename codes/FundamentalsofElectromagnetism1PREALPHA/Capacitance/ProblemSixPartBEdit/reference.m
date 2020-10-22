%% symbolic variables and constants
syms ep0 R q positive
syms r E V C Q
syms V0 R1 R2 positive

%% Equation of electric field for a sphere 
E(r) = q /ep0 / (4*pi*r^2);
assume(R2>R1)
assume(R1>0)
assume(R2>0)
V21 = int(E,r,[R1 R2]);
C21 = q / V21;
%pretty(C21)

Q = C21 * V0; %% we use the known the real voltage
%pretty(Q)

%% Upload the values of the variables
ep0 = 8.8541878176e-12;
V0 = 120; % V
pi = vpa(pi);
E(r) = subs(E, q, Q);
uE(r)  = subs(ep0*E^2/2, [R1, R2], [12.5e-2, 14.8e-2]);
uE_12cm = double(subs(uE(12.6e-2)));
uE_14cm = double(subs(uE(14.7e-2)));

%
fprintf('The energy density at r = 12.6 cm is : %d J/m^3 \n',uE_12cm);
fprintf('The energy density at r = 14.7 cm is : %d J/m^3 \n',uE_14cm);