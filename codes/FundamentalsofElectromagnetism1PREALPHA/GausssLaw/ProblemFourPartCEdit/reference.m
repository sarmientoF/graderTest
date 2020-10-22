%% symbolic variables and constants
syms rho0 alp ep0
syms r

spi = sym(pi); 
rho = rho0 * exp(-alp * r);
 
q_0_R = int(rho * 4 * spi * r^2, r, 0, r);
 
E_0_r = simplify(q_0_R /ep0 / (4* spi * r^2));
fprintf('Magnitude of the electric field as a function of r : \n');
pretty(E_0_r)