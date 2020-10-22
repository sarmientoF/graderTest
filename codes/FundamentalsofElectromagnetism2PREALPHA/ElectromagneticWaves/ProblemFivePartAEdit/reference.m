%% symbolic variables and constants
syms V0 C R w t real
spi = sym(pi); 
 
V(t) = V0 * sin(w*t);
Ires = V / R;
 
Vpha =  V0 * exp(1i * (w*t - spi/2));
Xc = 1 /(C *w) * exp(1i * -spi/2);
IdPha = simplify(Vpha / Xc);
Id = real(IdPha);
 
Q = V * C;
Ireal = Ires + diff(Q, t);
I_ans = Ires + Id;

Icompare = simplify(I_ans - Ireal);

fprintf('The leakage current is : \n');
pretty(Ires);
fprintf('The real current in the wires is : \n');
pretty(Ireal);
fprintf('The displacement current in the space between the plates is : \n');
pretty(Id);
fprintf('The comparison between the three currents is : \n');
pretty(Icompare);