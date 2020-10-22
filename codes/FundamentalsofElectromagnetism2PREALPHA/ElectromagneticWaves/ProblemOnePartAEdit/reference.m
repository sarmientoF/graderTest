%% symbolic variables and constants
syms k lambda
syms f w 
syms A phi 
syms x y z real
syms t real

% Electric field equation in xyz
E = A * cos(k * x - w * t + phi)*[0 1 0];

% Calculating the electromagnetic wave
X = [x y z];
dBdt = -curl(E,X);
B = int(dBdt, t);

% Constants 
A = 5; %V/m
w = 6e+9; % Hz
phi = 0.4; % rads
c = 3e+8; % m/s

f = w / (2*pi);
k = w /c;
lambda = 2 * pi / k;

% Direction of the wave B * v = E or E * B is // to v
E = subs(E);
B = subs(B);
direction  = cross(E,B)/norm(cross(E,B));
direction = simplify(direction);

fprintf('The amplitude of the electric field is : %0.2f V/m \n', A);
fprintf('The frequency of the electric field is : %0.2e Hz \n', f);
fprintf('The wavelength of the electric field is : %0.2f m \n', lambda);
fprintf('The direction of travel of the wave is : \n');
pretty(direction);
fprintf('The associated magnetic field wave is : \n');
pretty(vpa(B,3));
