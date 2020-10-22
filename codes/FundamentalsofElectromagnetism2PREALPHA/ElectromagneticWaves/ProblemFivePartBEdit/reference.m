%% symbolic variables and constants
syms A d a t ep0
 
C = ep0 * A/ d;
V(t) = a * t^2;
 
Q = V * C;
I = diff(Q, t);

fprintf('The displacement current between the plates is : \n');
pretty(I);