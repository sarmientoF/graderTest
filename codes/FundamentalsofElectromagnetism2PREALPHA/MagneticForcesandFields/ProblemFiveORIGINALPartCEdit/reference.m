%% Part C
syms m v q V B x positive
E_k = m*v^2;
W_Elc = q * V;
v = solve(E_k == W_Elc, v);
F_mag = q * v *B;
F_cnt = m * v^2 /(x/2); %% Radious is x/2
m_sol = solve(F_mag == F_cnt , m);
%fprintf('The a formula for mass m in terms of  q,  , and x is : \n')
%pretty(m_sol)