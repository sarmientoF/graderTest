%% symbolic variables and constants
syms u0 I z N R positive
 
B1 = (N * u0 * I * R^2) /(2*((z+R/2)^2+R^2)^(3/2));
B2 = (N * u0 * I * R^2) /(2*((z-R/2)^2+R^2)^(3/2));
B = expand(B1 + B2);

fprintf('The magnetic field at any point on the z-axis is : \n');
pretty(B)

DB = expand(diff(B,z));
DDB = expand(diff(DB,z));
%pretty(DB)
%pretty(DDB)

z = 0;
DB = simplify(subs(DB));
DDB = simplify(subs(DDB));
fprintf('The first and second order derivatives of the magnetic field at any point on the z-axis are : %s and %s \n',DB ,DDB);