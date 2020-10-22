function Q = Calc_charge(Vb, m, vel, h, V, F, t)
%% symbolic variables and constants
syms Q  
syms E0 E1 W1_2 E_total W_battery

%% Energy equations 
g=9.81; % gravity
E0 = 0; % At the begining 
E1 = m*g*h + m*vel^2/2; %After climbing the hill
W1_2 = F*t*V; % Work needed to move at constant speed by a constant force

%% Calculation of the total energy needed to move the car
E_total =  (E1-E0) + W1_2;
W_battery = Vb * Q;
Q = solve(E_total == W_battery, Q);
fprintf('Total battery charge is : %0.3e C \n', vpa(Q))
end