%% symbolic variables and constants
syms c tau v

c = 3e+8; % m/s
v = c/2; % m/s
m = 1; % kg
da = 1; % m/s^2

F = (m*da)/(1 - (v/c)^2)^(3/2);

fprintf('The force needed to accelerate the mass is : %0.3f N \n', F);