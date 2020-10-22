%% symbolic variables and constants
syms E a k epsilon theta

a = 3e-2; %% Dimensions of the area in meters
b = 2e-2; 
n = [cos(theta) sin(theta)]; %% Orientation of the rectangular area
E = [1 0] * 30; %% Electric field 
A = a * b;