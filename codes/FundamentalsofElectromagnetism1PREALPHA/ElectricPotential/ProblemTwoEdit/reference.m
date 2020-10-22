function EE = Electric_Field_Potential(V, a, R, P)
syms ep0 positive
syms q x y r E V_r E_r V0 E_1cm
syms dV dr

%% Equations
% By using Gauss for the rod of radius a (a<r<b)
E_r = q / ep0 / (2*pi*r);

% Display("The equation for the electric field is:")
dV = E_r*dr;
V_r = int(E_r, r, [x y]);

%% Calculate the relation between E and V (k = E/V)
k = E_r/V_r;

% Using extra variables(E_r , V_r) to write the new equation of E
E = k * V0;

%% Calculate the E for V0 = 900v, a=3mm, R=2cm, & P=1cm
E_1cm = subs(E,[V0 x y r],[V a R P]);
EE = vpa(subs(E_1cm));
fprintf('%f V/m \n',EE)
end