%% symbolic variables and constants
syms t

V_A = 160; % V
V_w = 120 * pi; % s^-1
V_th = 0; % rad
R = 50; % Ohms

V = V_A*sin(V_w*t+V_th);
Xr = R*(1+0i);
I = V_A/abs(Xr) * sin(V_w*t + (V_th-angle(Xr)));

fprintf('The current through the resistor is : \n');
pretty(I)