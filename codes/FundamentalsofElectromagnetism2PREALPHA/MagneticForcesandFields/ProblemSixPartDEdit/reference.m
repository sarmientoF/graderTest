%% symbolic variables and constants
syms x dx

I = [1 0 0]*2.5; % A
B = [2 5*x^2 0]*1e-3; % T

dF = cross(I,B) * dx;
F = int(dF/dx, x,[2 4]);
F = norm(F);

fprintf('The magnitude of the magnetic force on the segment of wire between x = 2.0 m and x = 4.0 m is : %0.3f N \n', F)
