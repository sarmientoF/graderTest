%% symbolic variables and constants
syms c tau v
syms xx yy zz tt

c = 3e+8; % m/s
x = 150e+3; % m
y = 15e+3; % m
z = 1e+3; % m
t = 4.5e-4; % s
v = 0.6*c; % m/s

tt = (t - v*x/c^2) / sqrt(1 - (v/c)^2);
xx = (x - v *t) / sqrt(1 - (v/c)^2);
yy = y;
zz = z;
Sprime =[xx yy zz tt];
Sprime = vpa(Sprime);

fprintf('The four-vector (x, y, z, t) of the primed system when the flash occurred is :\n');
fprintf('%0.0f m, %0.0f m, %0.0f m, %0.3e s \n',Sprime);