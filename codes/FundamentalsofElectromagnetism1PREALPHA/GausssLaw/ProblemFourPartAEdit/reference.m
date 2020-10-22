%% symbolic variables and constants
syms rho0 ep0
syms r r1 r2

spi = sym(pi); 
rho = rho0 * (r1/r);
 
q_0_r1 = 0;
q_r1_r2 = int(rho * 4 * spi * r^2, r, r1, r);
q_r2_inf = int(rho * 4 * spi * r^2, r, r1, r2);
 
E_0_r1 = simplify(q_0_r1 /ep0 / (4* spi * r^2));
fprintf('Magnitude of the electric field between the origin and the inner radius is : \n');
pretty(E_0_r1)

E_r1_r2 = simplify(q_r1_r2 /ep0 / (4* spi * r^2));
fprintf('Magnitude of the electric field between the inner and outer radius is : \n');
pretty(E_r1_r2)

E_r2_inf = simplify(q_r2_inf /ep0 / (4* spi * r^2));
fprintf('Magnitude of the electric field past the outer radius is : \n');
pretty(E_r2_inf)
