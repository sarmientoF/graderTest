%% symbolic variables and constants
syms V R L positive

I0 = 0;
R = [[8 -3];[-3 3]];
V = [12 ; 0];
I = R^-1 * V;
ISteady = I(2);

fprintf('The initial current through the battery is : %0.2f A \n', I0);
fprintf('The steady-state current through the battery is : %0.2f A \n', ISteady);