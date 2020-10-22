%% symbolic variables and constants
syms Ib(t) Ia(t)
syms R L emf positive

% Differtial equation for the RL cirucuit
eqn = diff(Ib,t)*L + R * Ib == emf;
cond = Ib(0) == 0;
Ib(t) = dsolve(eqn,cond);
I_inf = limit(Ib,t,inf);

% Part two
I0 = I_inf;
eqn = diff(Ia,t)*L + R * Ia == 0;
cond = Ia(0) == I0;
Ia(t) = dsolve(eqn,cond);

E_inductor = L * I0^2/2;
E_resistor = int(Ia^2 * R, t, 0, inf);

fprintf('The initial energy stored in the inductor is : \n');
pretty(E_inductor);
fprintf('The total energy eventually dissipated in the resistor is : \n');
pretty(E_resistor);