%% symbolic variables and constants
syms q R t t0 r(t) rho
syms ep0 

%%Relation between r and t 
r(t) = R + (2*R - R)/ t0 * t;
 
E_surf  = q / ep0 / (4*pi*r^2);
fprintf("The electric field at the ballon's surface is : \n");
pretty(E_surf)
 
E_R_0 = q / ep0 / (4*pi*r(0)^2); % Electric field before balloon is biger than R
E_R_t = 0; % There is no enclosed charge 
 
fprintf("The electric field at the surface of radius R for t = 0 is :\n");
pretty(E_R_0)
fprintf("The electric field at the surface of radius R for t > 0 is : %f \n",E_R_t);
 
t2R = solve(r == 2*R, t); % Time when sphere r is bigger than 2R
 
E_2R_t2R = q /ep0 / (4*pi*(2*R)^2); % Electric field before t2R 
E_2R_t = 0; % There is no enclosed charge 
 
fprintf("The electric field at the surface of radius 2R for t < t0 is :\n");
pretty(E_2R_t2R)
fprintf("The electric field at the surface of radius 2R for t > t0 is : %f \n",E_2R_t)