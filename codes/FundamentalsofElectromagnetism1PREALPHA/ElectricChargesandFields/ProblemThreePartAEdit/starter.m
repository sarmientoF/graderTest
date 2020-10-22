%% symbolic variables and constants
function E = Electric_field(k, p, Q)

syms x y real
E = [0, 0]; % start with zero electric field