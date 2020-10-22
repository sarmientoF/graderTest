%% symbolic variables and constants
syms Vf
 
V0 = 36; % V
c1 = 8.4e-6; % F
c2 = 8.4e-6; % F
c3 = 4.2e-6; % F
 
C = [c1 c2 c3];
c = sum(1./C)^-1;
q0 = c * V0;% The charge is the same for all the capacitors
 
%% When is reconected in parallel 
Q = [];
for i = 1:numel(C)
    Q =[Q C(i)*Vf];
end
qf = sum(Q);
Vf = solve(qf == q0*3, Vf);
 
fprintf ( 'The charge on the 4.20e-6 F capacitor is : %1.2e C \n' ,q0);
fprintf ( 'The voltage across each capacitor in the parallel combination is : %0.1f Volts \n' ,Vf);