%% symbolic variables  and constants 
syms r rho z real
syms k lambda positive

V_l(r, rho, z) = -2*k*lambda*log(r); % Potential of line charge
V = V_l;
fprintf("The electric potential of an infinite line of charge is :\n")
pretty(V)

E = -[diff(V_l, r)
      1/r*diff(V, rho)
      diff(V,z)]; % Polar coordinates
fprintf("The electric field of an infinite line of charge is :\n")
pretty(E)