%% symbolic variables and constants
syms a b B0 positive

a = 0.1; % m
b = 0.08; % m
B0 = 1.5; % T
I = 10; % A

% Part A
P = [[0 0 0]
    [a 0 0]
    [a+b*cosd(60) b*sind(60) 0]
    [b*cosd(60) b*sind(60) 0]];
B = [0 B0 0];

F_i = [];
T_i = [];
n = length(P);
for i = 1:n
    L = P(i+1-((i+1)>n)*n,:) - P(i,:);
    IL = I * L; %% IL means intensity multiplied by the length of the bar
    F_i = [F_i ;cross(IL,B)];
    T_i = [T_i ;cross(L/2 + P(i,:),F_i(i,:))]; %% The pivot is the origin of the cooridinates
end
S_F_i = sum(F_i);
Force_net = norm(S_F_i);
S_T_i = sum(T_i);
Torque_net = norm(S_T_i);

fprintf('The magnitude of the net force on the loop if I = 10 A and B = 1.5 T is : %.4f N \n', Force_net)
fprintf('The magnitude of the net torque on the loop if I = 10 A and B = 1.5 T is : %.4f Nm \n', Torque_net)