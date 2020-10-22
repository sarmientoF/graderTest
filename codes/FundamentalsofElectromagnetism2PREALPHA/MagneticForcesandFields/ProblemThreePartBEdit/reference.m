%% symbolic variables and constants
syms E B V v R q m positive
syms m m_e m_p R_e R_p T_e T_p positive

% Part B
m_e = 9.11e-31; % kg
m_p = 1.67e-27; % kg

F_mag = q * v * B;
F_cen = m * v^2/R;
R = solve(F_mag == F_cen, R);

R_e = subs(R, m, m_e);
R_p = subs(R, m, m_p);
ratio_R = subs(R_e / R_p);

T_e = R_e * 2 * pi/ v;
T_p = R_p * 2 * pi/ v;
ratio_T = subs(T_e / T_p);

fprintf('The ratio of the radii (Re/Rp) is : %.2e\n', ratio_R);  
fprintf('The ratio of the periods (T_e/T_p) is : %.2e\n', ratio_T); 