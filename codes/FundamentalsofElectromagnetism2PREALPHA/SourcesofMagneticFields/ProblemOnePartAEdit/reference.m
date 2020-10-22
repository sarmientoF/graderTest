%% symbolic variables and constants
syms u0 J positive
syms dx dy positive
syms x y z real

ds = [0 1 0]*dy;
dI = J*dx;
r = [-x -y z]; 

dB = u0/(4*pi) * dI*cross(ds,r)/norm(r)^3; 
dB_x = int(dB/dx, x, [-inf inf]); %% After the integration on x
B_Sav = int(dB_x/dy, y, [-inf inf]); %% After the integration on y

% For z > 0
assume(z>0);
B_up = simplify(B_Sav);
fprintf('The magnetic field on top of the sheet is : \n');
pretty(B_up)

% For z <0
assume(z<0);
B_down = simplify(B_Sav);
fprintf('The magnetic field on the bottom of the sheet is : \n');
pretty(B_down)

B_Sav = simplify(norm(B_down));
fprintf('a) The magnetic field using Biot-savart is : %s \n', B_Sav);

% Using Ampere's law
clear B
syms L B 
B_Amp = solve(B*2*L == u0 * J * L,B);
B_Amp = simplify(B_Amp);
fprintf('The magnetic field due to Ampere is : %s \n', B_Amp);