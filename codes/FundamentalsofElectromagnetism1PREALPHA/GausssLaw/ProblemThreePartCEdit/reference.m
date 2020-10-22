%% symbolic variables and constants
syms E0 a th phi alp R real
syms E n  
syms dth dalp dphi dS
E = [0 0 1]*E0;
n = [sin(alp)*sin(th) sin(alp)*cos(th) cos(alp)];  % normal vector to the surface

%% Integration
dS = R^2*sin(alp); % dth*dalp
dphi = dot(E, n)*dS;
phi = int(dphi, th,[0 2*pi]);
Phi = int(phi, alp,[0 pi/2]);
 
fprintf('The electric flux through the open hemspherical surface is : %s V m \n',Phi)