%% symbolic variables and constants
syms v th L N B dt positive

dA = v * dt * cos(th) * L; % area differential 
dphi = B * dA;
emf = N * dphi / dt;

N = 1; % number of turns
emf = subs(emf);

fprintf('The emf induced in the rod is : %s \n', emf);