function d = CalcDis(E, v, q, m)
syms a d positive

%% Equation 
a = E*q/m;
d = v^2/(2*a);
fprintf('%f m \n',d)
end