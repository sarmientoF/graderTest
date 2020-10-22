%% symbolic variables and constants
syms V(t)

R = 20; % Ohms
C = 50e-6; % F
L = 30e-3; % H
V_A = 10; % V
V_th = 0; % rads
f = 125; % s^-1

w = 2 * pi * f;

% Impedance
Xr = R;
Xl = L * w * (0 + 1i);
Xc = 1 / w / C * (0 -1i);
Z = Xr + Xl + Xc;
fprintf('The impedance of the circuit is : %.3f Ohms \n', abs(Z));

% Current
I_A = V_A/abs(Z);
fprintf('The amplitude of the current in the circuit is : %.3f A \n', I_A);

%Phase of the current
I_th = V_th - angle(Z);
I_th_degrees = I_th * 180/pi;
fprintf('The phase of the current is : %.3f degrees \n', I_th_degrees);
if(I_th>0)
    fprintf('It is lagging\n');
elseif(I_th<0)
    fprintf('It is leading\n');
else
    fprintf('It is neither\n');
end

% Voltage across resistor
Vr_A = I_A * abs(Xr);
Vr_th = I_th + angle(Xr);
Vr = Vr_A * cos(w*t+ Vr_th);
fprintf('The voltage drops across the resistor is :\n');
pretty(vpa(Vr,3));

% Voltage across capacitor
Vc_A = I_A * abs(Xc);
Vc_th = I_th + angle(Xc);
Vc = Vc_A * cos(w*t+ Vc_th);
fprintf('The voltage drop across the capacitor is :\n');
pretty(vpa(Vc,3));

% Voltage across inductor
Vl_A = I_A * abs(Xl);
Vl_th = I_th + angle(Xl);
Vl = Vl_A * cos(w*t+ Vl_th);
fprintf('The voltage drop across the inductor is :\n');
pretty(vpa(Vl,3));

% Voltage across the source
V = V_A * cos(w*t);
fprintf('The voltage drop across the source is :\n');
pretty(vpa(V,3));

% Power Factor
PF = cos(V_th - I_th);
fprintf('The power factor of the circuit is : %.4f \n', PF);

% Energy used in the resistor
Dt = 2.5; % s
EnergyR = (Vr_A * I_A)/2 * cos(Vr_th - I_th) * Dt;
fprintf('The energy that is used by the resistor in 2.5s is : %.3f J \n', EnergyR);