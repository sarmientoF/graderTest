%% symbolic variables and constants

Vin = 110; % V
Vout = 9; % V
Iout = 500e-3; % A
Np = 500; % primary winding

Ns = Np * Vout / Vin; % Transformer property

% For the current
Iin = Iout * Vout / Vin; % Conservation of power

fprintf('The number of turns in the secondary winding is : %0.0f \n', Ns);
fprintf('The current through the primary winding is : %0.2e A \n', Iin);