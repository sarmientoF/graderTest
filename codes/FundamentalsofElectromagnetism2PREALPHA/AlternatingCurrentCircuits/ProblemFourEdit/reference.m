%% symbolic variables and constants
syms V(t)

R = 1.5e+3; % Ohms
L = 30e-3; % H
VRMS = 120; % V
f = 60; % Hz

w = 2 * pi * f;
V_A = VRMS * sqrt(2);
V_th = 0;
V = V_A * sin(w*t + V_th);

% Impedance
Xr = R;
Xl = (L*w) * (0 + 1i);
Z = Xr + Xl;

% Current
I_A = V_A / abs(Z);
I_th = V_th - angle(Z);
% I = I_A * sin(w*t+I_th);
IRMS = I_A/sqrt(2);

% Voltage across resistor
Vr_A = I_A * abs(Xr);
Vr_th = I_th + angle(Xr);
Vr = Vr_A * sin(w*t+ Vr_th);
VrRMS = Vr_A /sqrt(2);

% Voltage across inductor
Vl_A = I_A * abs(Xl);
Vl_th = I_th + angle(Xl);
Vl = Vl_A * sin(w*t+ Vl_th);
VlRMS = Vr_A /sqrt(2);

% Power dissipated by resistor
PowerR = Vr_A*I_A/2 * exp(1i*(Vr_th-I_th));
PowerL = Vl_A*I_A/2 * exp(1i*(Vl_th-I_th));
PowerV = V_A*I_A/2  * exp(1i*(V_th-I_th));

fprintf('The rms current in the circuit is : %.2f A \n',I_A);
fprintf('The rms voltage drops across the resistor in : %.2fV \n',Vr_A);
fprintf('The rms voltage drops across the inductor in : %.2f V \n',Vl_A);
fprintf('The impedance of the circuit is : %.3f Ohms \n',abs(Z));
fprintf('The power disipated in the resistor is : %.2f W \n',real(PowerR));
fprintf('The power disipated in the inductor is : %.2f W \n',real(PowerL));
fprintf('The power produced by the source is : %.2f W \n',real(PowerV));