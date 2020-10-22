%% symbolic variables and constants
%% Part D
rho_nich = 1.1e-6;
alp_nich = 0.4e-3;
l = 3e-3; % m
A = 1e-6; % m

R_room = rho_nich * l /A;
R_body = R_room*(1 + alp_nich * (37-20));

fprintf ( 'The resistance at room temperature (20 degrees Celsius) is : %.6f Ohms \n' , R_room);
fprintf ( 'The resistance at body temperature (37 degrees Celsius) is : %.6f Ohms \n' , R_body);