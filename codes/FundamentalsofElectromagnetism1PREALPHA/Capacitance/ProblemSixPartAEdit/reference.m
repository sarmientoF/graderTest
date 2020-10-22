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

E_C = 1/2 * C21 * V0^2;
%pretty(E_C)

%% Upload the values of the variables
ep0 = 8.8541878176e-12;
R1 = 12.5e-2; % m
R2 = 14.8e-2; % m
V0 = 120; % V
pi = vpa(pi);
E(r) = subs(E, q, Q);

%% Printing the solution 
C = double(subs(C21));
fprintf('The capacitance of this system : %d Farads \n',C);
E_12cm = double(subs(E(12.6e-2)));
fprintf('The magnitude of the electrical field at r = 12.6 cm : %d V/m \n',E_12cm);
E_14cm = double(subs(E(14.7e-2)));
fprintf('The magnitude of the electrical field at r = 14.7 cm is : %d V/m \n',E_14cm);
