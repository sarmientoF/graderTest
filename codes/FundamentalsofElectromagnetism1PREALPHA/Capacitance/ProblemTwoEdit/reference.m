%% symbolic variables and constants
syms ep0 q C a l positive
syms r E V Q

%% Equation of electric field for a infinite cylinder 
syms V0 R1 R2 positive
assume(R2>R1);
assume(R1>0);
assume(R2>0);
E = q /ep0 / (2*pi*r*l);
V21 = int(E,r,[R1 R2]);
C21 = q / V21;
%pretty(C21)

% We call the  ratio between R2 and R1 as "a" ( R2 = R1*a)
R2 = R1 * a;
C21 = subs(C21);

%% We call C as the capacitance per unit length of a cylindrical capacitor  = 20pF
a = solve(C*l == C21,a); 
%pretty(a)

ep0 = 8.8541878176e-12;
pi = vpa(pi);
C = 20e-12;% C/v
sol = vpa(double(subs(a)));
fprintf ('The ratio of the radii of the two cylinders is 1 to %d. \n' , vpa(sol));