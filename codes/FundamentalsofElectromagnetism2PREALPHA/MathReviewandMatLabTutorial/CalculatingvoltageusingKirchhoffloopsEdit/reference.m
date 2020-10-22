% It is possible to organize the system of equations multiple ways and still arrive at the correct currents.
% A convention of positive voltages, order of coefficients, and order of loop equations
% has been prescribed in the problem statement to facilitate automated assessment.

% Loop equations
% Ia: 9v - 6k(Ia) - 2k(Ia) + 2k(Ib) - 10k(Ia)
% Ib: 1.5v + 2k(Ia) -2k(Ib) - 1k(Ib) - 8k(Ib) + 8k(Ic)
% Ic: 3V + 8k(Ib) - 8k(Ic) -9k(ic) - 5k(Ic)

% Voltages
V = [9;1.5;3];

% Equation coefficients
R = [18 -2 0;
    -2 11 -8;
    0 -8 22];

% Solve for loop currents
I = R\V;

% Vcf = Vc-Vf = (ib-ic)* 8
Vcf = 8*(I(2)-I(3));