%% symbolic variables and constants
syms I Q t

%% Equation of the charge as a function of time
Q(t) = 4*t^4 - 1*t + 6e-3;
I(t) = diff(Q,t); % Derivative of Q as a function of t is the current (I)
I_3 = subs(I(3));
fprintf ( 'The current, I, at time t = 3 seconds is : %.2f Amps \n' , I_3);