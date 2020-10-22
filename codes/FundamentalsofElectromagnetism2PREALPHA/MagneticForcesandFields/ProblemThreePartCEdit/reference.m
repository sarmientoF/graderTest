%% symbolic variables and constants
syms E B V v R q m positive
syms m m_alp m_p v_alp v_p R_alp R_p T_alp T_p positive

% Part C
m_alp = 6.64e-27; % kg
m_p = 1.67e-27; % kg

F_mag = q * v * B;
F_cen = m * v^2/R;

R = solve(F_mag == F_cen, R);
R_alp = subs(R,[m v q],[m_alp v_alp 2*q]);
R_p = subs(R,[m v],[m_p v_p]);

T_alpha = R_alp*2*pi/v_alp;
T_p = R_p*2*pi/v_p;
ratio_T = subs(T_alpha / T_p);

fprintf('The ratio of the periods (T_alpha/T_p) is : %.2f \n', ratio_T); 