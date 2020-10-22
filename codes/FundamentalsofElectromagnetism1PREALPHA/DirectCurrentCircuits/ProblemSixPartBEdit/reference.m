% symbolic variables and constants 
syms Rab R positive

RabSol = solve(Rab == 1/(1/(2*R+Rab) + 1/R), Rab);
fprintf('The resistance between terminals a and b is : %s.\n',char(RabSol));
