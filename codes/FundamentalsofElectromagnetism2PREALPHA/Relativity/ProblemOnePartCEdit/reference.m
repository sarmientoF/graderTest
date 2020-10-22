%% symbolic variables and constants
syms c tau v

c = 3e+8; % m/s
v = c/2; % m/s

L = 1; % m
LL = L *  sqrt(1 - (v/c)^2); 

fprintf('The length of the rod observed by an observer in the frame of spaceship A is : %f m \n', LL);