%% symbolic variables and constants
syms V(t)

V_A = 120; % V 
w = 120 * pi; % s^-1
V_th = 0; % rads
R = 400; % Ohms
C = 4e-6; % F

% Transforming to phasor
Xr = R * (1 + 0i);
Xc = 1/(C*w) * (0 - 1i);
V = V_A * cos(w*t + V_th);

% Impedance
Z = Xr + Xc;
fprintf('The impedance of the circuit is : %.3f Ohms \n', abs(Z));

% Current through circuit
I_A = V_A / abs(Z); % Amplitude
% I_th = V_th - angle(Z); % Old code Phase
I_th = 0; % Phase
I = I_A * cos(w*t + I_th); % Equation
fprintf('The amplitude of the current through the resistor is : %.3f A \n', I_A);
fprintf('The current through the resistor is : \n ');
pretty(vpa(I,4))

% Voltage in resistor + capacitor
Vr_A = I_A*abs(Xr);
Vr_th = I_th + angle(Xr);
Vr = Vr_A * cos(w*t+Vr_th);
fprintf('The voltage across the resistor is : \n ');
pretty(vpa(Vr,4))

Vc_A = I_A*abs(Xc);
Vc_th = I_th + angle(Xc);
Vc = Vc_A * cos(w*t+Vc_th);
fprintf('The voltage across the capacitor is : \n ');
pretty(vpa(Vc,4))