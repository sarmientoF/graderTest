%% symbolic variables and constants
syms v R t tf m_p q B0
 
v = [0 4 3] * 1e+6; % m/s
R = 5e-2; % m
tf = 5e-7; % s
m_p = 1.67e-27; % kg
q_p = 1.6021e-19;% C 
 
u_B = [0 0 1];
B = B0 * u_B;
 
% Velocity decomposition 
v_prl = dot(v,u_B)*u_B;
v_per =  v - v_prl;
% Magnetic dorce
LHS = q_p * cross(v,B);
% Centripetal force
RHS = m_p * norm(v_per)^2/R;
% Magnitude of magnetic dield
B0 = solve(LHS(1) == RHS, B0);
B = subs(B, B0);
 
% Angular velocity
w = norm(v_per)/R;
T = 2 * pi / w;
% Loops 
n_loops = tf/T;
 
fprintf('The value of B, in Tesla, is : \n');
pretty(vpa(B,3));
fprintf('The time required for one trip around the helix is : %.2e s\n', T);
fprintf('The location of the proton is : %.2f times around the helix \n', n_loops);