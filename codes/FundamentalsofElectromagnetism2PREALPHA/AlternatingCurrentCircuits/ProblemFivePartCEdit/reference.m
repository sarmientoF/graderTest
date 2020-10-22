%% symbolic variables and constants
syms w t positive

assume(w>0)

R = 100; % Ohms
C = 5e-6; % F
L = 2.0; % H
V_A = 100; % V
V_th = 0; % rads

% Impedance
Xr = R;
Xl = L * w * (0 + 1i);
Xc = 1 / C / w * ( 0 -1i);
Z = Xr+ Xl + Xc;

% Resonance Frequency
wR = solve(Xc + Xl ==0, w); % wR = 1 / sqrt(L * C)
fR = wR/2/pi;
fprintf('The value of the resonance frequency is : %.3f Hz\n',fR);

% Power output at resonant frequency
P_wR = real(V_A^2/2 / Xr);
fprintf('The power output of the source at wR is : %.3f W \n', P_wR);

% Quality Factor and BW
P_w = real(V_A^2/2 / Z);
P_w = simplify(P_w, 'steps', 10);

wLH = solve(P_w == P_wR/2, w);
fL = wLH(1)/2/pi;
fH = wLH(2)/2/pi;

Q = fR/ (fH - fL); 
% Q = 1/R * sqrt(L/C)
Q = simplify(Q);
BW = (fH - fL) * 2 * pi;
% BW = R/L;
BW = simplify(BW);

fprintf('The Q of the circuit is : %.3f\n', Q);
fprintf('The bandwidth of the circuit is : %.3f\n Hz', BW);
