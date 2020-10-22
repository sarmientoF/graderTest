%% symbolic variables and constants
syms Ib(t) Ia(t)
syms R L emf positive

% Differtial equation for the RL cirucuit
eqn = diff(Ib,t)*L + R * Ib == emf;
cond = Ib(0) == 0;
Ib(t) = dsolve(eqn,cond);
DI = diff(Ib,t);
DI0 = DI(0);
I_inf = limit(Ib,t,inf);

fprintf('The form of dI/dt the instant after the switch is thrown in the circuit is : \n');
pretty(DI);
fprintf('The limit of dI/dt that if I were to continue to increase at this initial rate is : \n');
pretty(I_inf);