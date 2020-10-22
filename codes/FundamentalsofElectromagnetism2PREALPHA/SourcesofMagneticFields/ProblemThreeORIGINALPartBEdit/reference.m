%% symbolic variables and constants
syms a b d positive
syms B u0 I positive
syms r positive 
syms r1x r2x r1y r2y ax ay real
assume(a>b)
 
r1_v = [r1x r1y 0];
d_v =  [d 0 0];
r2_v = r1_v - d_v; %% working with vectors 
I_v = [0 0 1]* I;
J_v = I_v/(pi*(a^2-0*b^2)); %current density
 
B1_in = u0/(2) * cross(J_v, r1_v); % M.F. inside the wire without hole
B2_in = u0/(2) * cross(J_v, r2_v); % M.F. inside the hole
B_hole = simplify(B1_in - B2_in);
 
B1_out = u0/(2) * a^2/norm(r1_v)^2 * cross(J_v, r1_v);
B2_out = u0/(2) * b^2/norm(r2_v)^2 * cross(J_v, r2_v);
 
% Vector mode
pretty(simplify(subs(B1_in - B2_out, [r1x r1y], [r 0])));
pretty(simplify(B1_in - B2_in));
pretty(simplify(B1_out - B2_out));
 
% Magnitude 
B_closest = simplify(norm(subs(B1_in - B2_out, [r1x r1y], [r 0])), 'steps', 100);
B_hole    = simplify(norm(B1_in - B2_in),'steps', 100);
B_out     = simplify(norm(B1_out - B2_out),'steps', 100);

fprintf('The magnetic field at a point at the edge of the hole closest to the center of the thick wire is : \n');  
pretty(B_closest)
fprintf('The magnetic field at an arbitrary point inside the hole is : \n');  
pretty(B_hole)
fprintf('The magnetic field at an arbitrary point outside the wire is : \n');  
pretty(B_out)