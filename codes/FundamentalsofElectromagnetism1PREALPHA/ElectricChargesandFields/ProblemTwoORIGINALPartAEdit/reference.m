%% symbolic variables and constants
% Graph function
function V = graph_field(k, p, Q)
[x,y] = meshgrid(linspace(-2,2,59),linspace(-1,1,59));
V = zeros(size(x)); % Start with zero electric potential

for i = 1:numel(Q) % Superpose the electric potential field of each charge
    V = V + k * Q(i) ./ hypot(p(i,1)-x, p(i,2)-y);
end

[px,py] = gradient(V,.15,.15);
contour(x,y,V), hold on
quiver(x,y,px,py), hold off, axis image

end
