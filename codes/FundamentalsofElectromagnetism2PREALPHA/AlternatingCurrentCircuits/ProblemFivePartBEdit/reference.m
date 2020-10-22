%% symbolic variables and constants
syms w t

assume(w>0)

R = 200; % Ohms
C = 150e-6; % F
L = 2.5; % H
V_A = 10; % V
V_th = 0; % rads

% Impedance
Xr = R;
Xl = L * w * (0 + 1i);
Xc = 1 / C / w * ( 0 -1i);

% Resonance Frequency
wR = solve(Xc + Xl ==0, w); % wR = 1 / sqrt(L * C)
fprintf('The value of the resonance frequency is : %.3f Hz \n',wR)

% Impedance for resonance frequency
Z = subs(Xr + Xl + Xc,w, wR); % Is the same as Xr only

% Current
I_A = V_A/abs(Z);
fprintf('The amplitude of the current in the circuit is : %.3f A \n', I_A);

%Phase of the current
I_th = V_th - angle(Z);
I_th_degrees = I_th * 180/pi;
fprintf('The phase of the current is : %.3f degrees\n', I_th_degrees);
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
Vr = Vr_A * cos(wR*t+ Vr_th);
fprintf('The voltage drop across the resistor is :\n');
pretty(vpa(Vr,3));

% Power Factor
PF = cos(V_th - I_th);
fprintf('The power factor of the circuit is : %.4f \n', PF);

% Energy used in the resistor
Dt = 2.5; %[s]
EnergyR = (Vr_A * I_A)/2 * cos(Vr_th - I_th) * Dt;
fprintf('The energy that is used by the resistor in 2.5s is : %.3f J\n', EnergyR);