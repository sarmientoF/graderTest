%% symbolic variables and constants
syms ep0 R q positive
syms r E V C Q

%% Equation of electric field for a sphere 
E = q /ep0 / (4*pi*r^2);

% Calculate the electric potential, considering V_inf = 0
V_inf = 0;
V = V_inf + int(E,r,[R inf]);

% Capacitance ( C = q/V)
C = q /V;

%% For the second part
syms V0 R1 R2 R positive
assume(R2>R);
assume(R1>0);
assume(R2>0);

V21 = int(E,r,[R1 R2]);
C21 = q / V21;

%pretty(C21)
Q = C21 * V0; %% we use the known V0 = 350000 from the equation calculated before 

%pretty(Q)
E_C = 1/2 * C21 * V0^2;

%pretty(E_C)
%% Upload the values of the variables
ep0 = 8.8541878176e-12;
R1 = 64e5;
R = R1; 
R2 = R1 + 7e4;
V0 = 35e4;
pi = vpa(pi);

%% Printing the solution 
c_Earth = double(subs(C));
c_sys = double(subs(C21));
fprintf('The capacitance of this system is : %e Farads \n', c_sys);
q_chrg = double(subs(Q));
fprintf('The total charge on this capacitor is : %e Coulombs \n', q_chrg);
sys_eng = double(subs(E_C));
fprintf('The energy stored in this system is : %e Joules \n', sys_eng);