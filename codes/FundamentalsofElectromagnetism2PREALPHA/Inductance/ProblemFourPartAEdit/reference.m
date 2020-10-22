%% symbolic variables and constants
syms q(t) 
syms V c L positive

q0 = V * c;
eqn = diff(q,t,2) * L + q / c == 0;
Dq = diff(q,t);
cond = [q(0)==q0, Dq(0)==0];
qSol(t) = simplify( dsolve(eqn,cond) );
ISol(t) = simplify(diff(qSol,t));
E_ind = L * ISol^2 / 2;

% Substitutions 
L = 100e-3; % H
c = 4e-6; % F
V = 12; % V

frequency = (L * c)^(-1/2) * 1 / (2 * pi);
maxQ = V * c;
maxI = V * (c/L)^0.5;
Emed = 1/2 * c *V^2;

fprintf('The frequency of the resulting oscillations is : %0.2f Hz \n', frequency);
fprintf('The maximum charge on the capacitor is : %0.2e C \n', maxQ);
fprintf('The maximum current through the inductor is : %0.2e A \n', maxI);
fprintf('The electromagnetic energy of the oscillating circuit is : %0.2e J \n', Emed);