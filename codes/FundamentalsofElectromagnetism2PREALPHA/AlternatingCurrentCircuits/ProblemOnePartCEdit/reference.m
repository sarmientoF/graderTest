%% symbolic variables and constants
syms t

V_A = 160; % V
w = 120 * pi; % s^-1
V_th = 0; % rad
L = 100e-3; % H

V = V_A*sin(w*t+V_th);
Xl = (w * L) * (0 + 1i); % Reactance
Xl_final = abs(Xl);
I = V_A/Xl_final * sin(w*t + (V_th-angle(Xl))); % Current

fprintf('The reactance of the inductor is : %.0f Ohms \n', Xl_final);
fprintf('The current through the inductor is : \n');
pretty(I)