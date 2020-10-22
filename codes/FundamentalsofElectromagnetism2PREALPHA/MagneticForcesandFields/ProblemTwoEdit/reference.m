%% symbolic variables and constants
syms E B v R q m

% Finding the electric field by usign the magnetic and electric force
v = [4 3 2]*1e+6;
B = [1 -2 4]*1e-2;
F_mag = q * cross(v,B);
E = F_mag / q; 
% F_ele = F_mag ,coz the particle is not deflected 

fprintf('The electric field is : (%.2e)<strong>i</strong> + (%.2e)<strong>j</strong> + (%.2e)<strong>k</strong>  V/m \n', E); 