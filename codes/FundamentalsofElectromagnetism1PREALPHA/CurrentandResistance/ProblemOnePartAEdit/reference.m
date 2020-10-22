%% symbolic variables and constants
syms I I0 tau t t0 tf
syms dt dq 

%% Equations 
I(t) = I0 *exp(-t/tau);
I0 = 3; % A
tau = 0.5; % s

%% By using builtin funtions in matlab 
Q_int = int(I, t, [0 3*tau]); % dq = I * dt; 
Q_3 = subs(Q_int);
fprintf ( 'The amount of charge, Q, that flows during this time is : %.3f C \n' , Q_3);

%% By using numerical methods 
%dq = I * dt;
%Q = 0;
% Simple numerical integration
%t = 0:0.01:3*tau;
%for i = numel(t)
%    Q = Q + subs(I(t(i))*0.01);
%end
%fprintf ( 'The amount of charge, Q, that flows during this time is : %.3f C \n' , Q);