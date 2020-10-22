%% symbolic variables and constants
syms B mA mB vA vB qA qB rA rB 

PA = mA * vA;
PB = mB * vB;

assume(PA == PB);
assume(qA == 4*qB);

R1 = solve(mA*vA^2/rA == qA * vA * B, rA);
R2 = solve(mB*vB^2/rB == qB * vB * B, rB);
ratio_AB = simplify(R1/R2);

fprintf('The ratio of the radii of their circular orbits is : %.2f \n', ratio_AB);  