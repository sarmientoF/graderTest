%% symbolic variables and constants
syms k real
syms R1 R2 r
syms q1 q2

%% Equat1ons
Q = [0 q1 q2];
R = [R1 R2 inf];
q = 0;
E = [];
V = [0]; % V_inf

for i = 1:numel(Q)
   q = q + Q(i);
   E = [E,  k * q/r^2];
end

for i = numel(Q):-1:1
   Int_E(r) = int(E(i), r);
   V = [V, subs(V(end),r, R(i))  + Int_E(R(i)) - Int_E(r)];
end

V = flip(V);
V_1 = simplify(V(1));
V_2 = simplify(V(2));
V_3 = simplify(V(3));

fprintf("The electric potential for r < R1 is :\n")
pretty(V_1)
fprintf("The electric potential for R1<r<R2 is :\n")
pretty(V_2 )
fprintf("The electric potential for R2 < r is :\n")
pretty(V_3)