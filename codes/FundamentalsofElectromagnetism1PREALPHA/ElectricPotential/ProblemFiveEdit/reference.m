%% symbolic variables and constants
v0 = 5e6; % m/s
E = 2e5; % N/C
m_e = 9.1e-31; % mass of electron
q_e = 1.6e-19; % charge of electron

%% Kinematic equations 
a = E*q_e/ m_e;
d = v0^2/(2*a);
t = v0/a;
vf = sqrt(2*a*d);
 
%% Display results
fprintf ( 'The direction of the electric field is the same as its velocity. \n');
fprintf ( 'The electron travels %d m before coming to rest. \n' , d);
fprintf ( 'It takes %d s for the electron to come to rest. \n' , t);
fprintf ( 'The electron velocity when it returns to its starting point is %0.3e m/s. \n' , vf);