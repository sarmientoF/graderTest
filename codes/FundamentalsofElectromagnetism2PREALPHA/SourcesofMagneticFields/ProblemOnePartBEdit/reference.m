%% symbolic variables and constants
syms u0 J L B 

B_Amp = solve(B*2*L == u0 * J * L,B);
B_Amp = simplify(B_Amp);
%fprintf('The magnetic field due to Ampere is : %s \n', B_Amp);

% The same direction 
B_above = B_Amp + B_Amp;
B_between = -B_Amp + B_Amp;
B_below = -B_Amp - B_Amp;
fprintf('The magnetic field above and below the two sheets is : %s and %s \n', B_above, B_below);
fprintf('The magnetic field between the two sheets is : %s \n', B_between);

% Below reversed 
B_aboveR = B_Amp - B_Amp;
B_betweenR = -B_Amp - B_Amp;
B_belowR = -B_Amp + B_Amp;
fprintf('For the second part. \n');
fprintf('The magnetic field above and below the two sheets is : %s and %s \n', B_aboveR, B_belowR);
fprintf('The magnetic field between the two sheets is : %s \n', B_betweenR);