%% symbolic variables and constants
syms x y a real
syms E(x) n 
E = [2*x 0 3*x^2];
n = [0 0 1];

%% Integration
dphi = dot(E, n); % dx * dy
phi = int(dphi, x,[0 a]);
Phi = int(phi, y,[0 a]);
 
fprintf('Magnitude of the electric flux is : %s V m \n',Phi)