%% symbolic variables and constants
syms a b I N r th u0 positive

% For the toroid 
rV = [sin(th) cos(th)];
B = u0 * I * N / 2 / pi / r;
thV = [-cos(th) sin(th)];
B = simplify(B * thV);
B = simplify(norm(B));

fprintf('The magnetic field inside the torus is : \n')
pretty(B)