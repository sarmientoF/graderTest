%% symbolic variables and constants
syms E a k epsilon theta

a = 3e-2; %% Dimensions of the area in meters
b = 2e-2;
n = [cos(theta) sin(theta)]; %% Orientation of the rectangular area
E = [1 0] * 30; %% Electric field 
A = a * b;

%% Calculation of the electric flux int(E * dA)
Fi = dot(E, n) * A;

%% For parallel 
Fi_parallel = double(subs(Fi, theta, 0));
fprintf('Electric flux parallel to the plates : %0.4f V m\n',Fi_parallel);

%% For perpendicular 
Fi_perpendicular = double(subs(Fi, theta, pi/2));
fprintf('Electric flux perpendicular to the plates : %0.1f V m\n',Fi_perpendicular);

%% For 30 degree
Fi_30 = double(subs(Fi, theta, pi/3));
fprintf('Electric flux normal to the area making a 30-degree angle with the direction of the electric ﬁeld : %0.4f V m\n',Fi_30);
