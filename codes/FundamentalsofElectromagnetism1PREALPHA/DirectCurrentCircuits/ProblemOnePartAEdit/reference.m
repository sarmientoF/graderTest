%% symbolic variables and constants
syms k R C t 
tc = 10e-3; % s
C = 8e-6; % F
V0 = 12e3; % V
Vf = 6e2; % V

%V = I * R + q / C;
k = R*C;
R = solve(k == tc , R);
V(t) = V0 * exp(-t/k); 
t_Vf = subs(subs(solve(V ==Vf,t)));

fprintf ( 'The resistance of the path through the patient is : %d Ohms \n' , R);
fprintf ( 'The time for the initial voltage to go to 600 V is : %.3f seconds \n' , t_Vf);