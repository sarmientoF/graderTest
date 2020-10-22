%% symbolic variables and constants
syms J0 th1 th2 a r1 r2 R1 R2 B r u0
syms r1x r2x r1y r2y ax ay positive

r1 = [r1x r1y 0];
r2 = [r2x r2y 0];
a =  [ax ay 0];
r2 = r1 - a; %% working with vectors 
J = J0*[0 0 1];
k = [0 0 1];

% Using Ampere's Law to calculate the mag. field 
% For the big conductor R1 
B = solve(B*2*pi*r == J0 * pi * r^2 * u0 ,B); %Calculate the magnitude of the mag. field
th1 = cross(k,r1)/norm(r1);
th2 = cross(k,r2)/norm(r2);
B1 = subs(B,r,norm(r1))*th1;
B2 = subs(B,r,norm(r2))*th2;
B_R = simplify(B2 - B1);

fprintf('The magnetic field inside the cavity is given by : \n')
pretty(B_R)