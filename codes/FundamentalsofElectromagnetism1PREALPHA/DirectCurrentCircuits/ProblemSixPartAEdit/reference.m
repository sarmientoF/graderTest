% symbolic variables and constants 
syms Req_serial Req_parallel R1 R2 k

%% For serial conbination
R2 = k * R1; %% lim of k is 0
Req_serial = limit(R1 + R2, k,0);
fprintf('The equivalent resistance (serial) is : %s.\n',char(Req_serial));

%% For parallel conbination
clear R2
syms R2 l
R1 = R2 * l; %% lim of L is inf
Req_parallel = limit(1/(1/R1 + 1/R2), l,inf);
fprintf('The equivalent resistance (parallel) is : %s.\n',char(Req_parallel));
