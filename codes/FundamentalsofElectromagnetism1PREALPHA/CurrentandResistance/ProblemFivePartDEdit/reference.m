%% symbolic variables and constants
%% Part D
syms q0 t T
q0 = 10;
T = 5;

q(t) = q0 * exp(-t/T);
I(t) = diff(q, t);
I0 = abs(subs(I(0)));
I_half = abs(subs(I(T/2)));
t_half = subs(solve(I == I0/2, t));

fprintf ( 'The initial current through the wire  is : %.2f Amps \n' , I0);
fprintf ( 'The current at time t = T/2 is : %.2f Amps \n' , I_half);
fprintf ( 'The time t when the current is reduced by one-half its initial value is : %.2f seconds \n' , t_half);