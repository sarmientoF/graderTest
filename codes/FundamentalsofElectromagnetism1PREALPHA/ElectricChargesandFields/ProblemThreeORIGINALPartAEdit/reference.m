syms q epsilon k  
syms a positive
syms x y real
k = 1/(4*pi*epsilon);
p = [0, a; 0,-a];
Q = [q; -q];
V = 0; % Start with zero electric potential
for i = 1:numel(Q) % Superpose the electric potential field of each charge
    V = V + k * Q(i) ./ hypot(p(i,1)-x, p(i,2)-y);
end
E = gradient (-V, [x, y]);
%% For y = 0.
y = 0;
Ex = subs(E);
Ex = a*limit(Ex/a, a, 0);
%Ex = Exx(2)
%% For x = 0 
syms y
x = 0; 
Ey = simplify(subs(E));
Ey = a*limit(Ey/a, a, 0);
%Ey = Eyy(2)