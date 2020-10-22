%% symbolic variables and constants
%% Part B
syms I(t)
R = 10; % Ohms

I(t) = 3 * sin(2*pi/4 * t);
V(t) = I*R;
v = V(t);
t = 0:0.01:4;

plot(t, V(t), 'r')
xlabel('t') 
ylabel('V(t)') 
title ( 'V vs t' )
figure
plot(I(t), V(t), 'b')
xlabel('I(t)') 
ylabel('V(t)') 
title ( 'V vs I' )