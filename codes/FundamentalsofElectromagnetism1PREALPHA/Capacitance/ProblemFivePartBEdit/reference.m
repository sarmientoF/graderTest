%% symbolic variables and constants
syms Vf
 
V0 = 36; % V
c1 = 8.4e-6; % F
c2 = 8.4e-6; % F
c3 = 4.2e-6; % F
 
C = [c1 c2 c3];
c = sum(1./C)^-1;
q0 = c * V0;% The charge is the same for all the capacitors
 
%% When is reconnected in parallel 
Q = [];
for i = 1:numel(C)
    Q =[Q C(i)*Vf];
end
qf = sum(Q);
Vf = solve(qf == q0*3, Vf);
 
Ener_0 = 1/2 * sum(q0^2./C);
Ener_f = 1/2 * sum(C*Vf^2);

%% Upload the values of the capacitance and voltage
fprintf ( 'The total energy stored in all three capacitors for the initial configuration is  : %1.2e J \n' ,Ener_0);
fprintf ( 'The total energy stored in all three capacitors for the final configuration is  : %1.2e J \n' ,Ener_f);