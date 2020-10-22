%% symbolic variables and constants
syms R
syms alp ep0
syms r

spi = sym(pi); 
rho = alp * r^2;
 
q_0_R = int(rho * 4 * spi * r^2, r, 0, r);
q_R_inf = int(rho * 4 * spi * r^2, r, 0, R);
 
E_0_R = simplify(q_0_R /ep0 /  (4* spi * r^2));
fprintf('Magnitude of the electric field between the origin and radius R : \n');
pretty(E_0_R)

E_R_inf = simplify(q_R_inf /ep0 / (4* spi * r^2));
fprintf('Magnitude of the electric field past radius R is : \n');
pretty(E_R_inf)