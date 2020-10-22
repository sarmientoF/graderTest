function Sol = Potential_circle(Q)
%% function calculates the potential from a particle system arranged in a circular formation 
syms k q_e r

P = [];
n = numel(Q);
V = 0;

for i = 0:n-1
    th = (2*pi/n*i);
    P = [P; [cos(th) sin(th*(1-(th==pi)))]];
end
q = Q;

for i = 1:n-1
%     d =sqrt((P-P(i,:)).^2*[1;1]);
    d = sqrt((P(i+1:end,:) - P(i,:)).^2*[1;1]);
%     d = d + -1 *(d==0); % Avoid division by 0
%     q(i) = 0;
    V = V + k * Q(i)*(sum(q(i+1:end)./d));
end
V = simplify(V/r);
Sol = vpa(subs(V,[k q_e r],[9e9 1.6e-19 50e-9]));
fprintf('Electrostatic energy stored in this configuration is : %e J \n', Sol);
end