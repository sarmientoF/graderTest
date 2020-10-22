%% symbolic variables and constants
syms t

V_A = 160; % V
w = 120 * pi; % s^-1
V_th = 0; % rad
C = 25e-6; % F

V = V_A*sin(w*t+V_th);
Xc = 1 / (w * C) * (0 - 1i);  % Reactance
Xc_final = abs(Xc);
I = V_A/Xc_final  * sin(w*t + (V_th-angle(Xc))); % Current

fprintf('The reactance of the capacitor is : %.0f Ohms \n', Xc_final);
fprintf('The current output of the source is : \n');
pretty(I)