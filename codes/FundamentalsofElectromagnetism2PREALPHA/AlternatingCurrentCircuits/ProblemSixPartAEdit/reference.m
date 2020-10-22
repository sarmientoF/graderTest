%% symbolic variables and constants
syms w R C L Vin1 Vin2 Vout1 Vout2 positive

assume(w>0)

% Calculations for the first circuit
Xr = R;
Xc = 1 / w / C * (0 - 1i);
X = Xr + Xc;
I = Vin1 / X;

Vout1 = I * Xr;
Vout1 = norm([real(Vout1) imag(Vout1)]);
Vout1 = simplify(Vout1);
ratio1 = Vout1 / Vin1;

fprintf('For the first circuit, Vout1/Vin1 is : \n');
pretty(simplify(ratio1));

% Calculations for the second circuit
Xr = R;
Xl = L * w * (0 + 1i);
X = Xr + Xl;
I = Vin2 / X;

Vout2 = I * Xl;
Vout2 = norm([real(Vout2) imag(Vout2)]);
Vout2 = simplify(Vout2);
ratio2 = Vout2 / Vin2;

fprintf('For the second circuit, Vout2/Vin2 is : \n');
pretty(simplify(ratio2));

% High Frequency
Vout1_high = limit(Vout1, w, inf);
Vout1_high = simplify(Vout1_high);
Vout2_high = limit(Vout2, w, inf);

fprintf('For high frequencies, Vout1 is : \n');
pretty(Vout1_high)
fprintf('For high frequencies, Vout2 is : \n');
pretty(Vout2_high)

% Low  Frequency
Vout1_low = limit(Vout1, w, 0);
Vout2_low = limit(Vout2, w, 0);

fprintf('For low frequencies, Vout1 is : %.3f \n', Vout1_low);
fprintf('For low frequencies, Vout2 is : %.3f \n', Vout2_low);