%% symbolic variables and constants
function E = Electric_field(k, p, Q)
% Electric_field calculates the electric field of a system of charged
% particles
% k: Coulomb's constant
% p: position of particles in 2D
% Q: electric charge of the particles
syms x y real
 
E = [0, 0]; % Start with zero electric field
for i = 1:numel(Q) % Superpose the electric field of each charge
    r = [x, y] - p(i,:);
    E = E + k * Q(i) * r / norm(r)^3;
end
 
end