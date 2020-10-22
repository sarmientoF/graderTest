%% symbolic variables and constants
syms k ep0 r R rho alp landa th s a z real
syms dr dz dth dq

%%
dq = landa * dz;
landa = 1;%[c/m]
k = 9E9;
dV = k* dq /norm([s, 0, -z]);

% pretty(dV)
V_rod = simplify(int(dV/dz, z,[-1/2 1/2]));
 
fprintf("a) The potential from the rod is :\n")
pretty(V_rod)
%% For a charged particle 
q = 1; %[c]
V_chg = k * q/s;
 
fprintf("b) The potential from the point charge is : \n")
pretty(V_chg)

%% Plot both functions
 
ezplot(V_chg,[.1 1])
hold on
ezplot(V_rod,[.1 1])
title ( 'Potential of Charge vs Rod' )
legend ( 'Charge' , 'Rod' )
xlabel ( '0.1m <s <1m' ) % x-axis label 
ylabel ( 'Potential' ) % y-axis label
 
fprintf("c) The potential from the rod is stronger \n")
fprintf("d) The difference decrease \n")