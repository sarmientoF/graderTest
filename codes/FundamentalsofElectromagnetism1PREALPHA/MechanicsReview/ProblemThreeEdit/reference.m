%partic1.m - given the mass and initial time-dependent positions of 3 particles,
%this script calculates the velocities, accelerations and their center of mass 
%values. Type "help symbolic" within the command line 
%if need help on symbolic functions
clear;
format compact;                        %Suppress extra line-feeds on outputs
syms t;                                %declare t as a symbol
t = sym('t','real');                   %let t, and the masses be real
m=[1,2,3]                              %mass vector
M=sum(m)                               %total mass
r=[3+2*t^2,4,0;-2+1/t,2*t,0;1,-3*t^2,0]%given position vectors 
v=diff(r,t,1)                          %velocity vector
a=diff(r,t,2)                          %acceleration vector
rcm=m*r/M                              %center of mass coordinate
vcm=m*v/M                              %center of mass velocity
acm=m*a/M                              %center of mass acceleration
%================== evaluate =====================
t=1;                                   %set the time at which to evaluate expressions
r=eval(r)
v=eval(v)
a=eval(a)
rcm=eval(rcm)
vcm=eval(vcm)
acm=eval(acm)


%partic2.m - given the mass and initial positions, velocities, and
%accelerations of 3 particles, this script calculates their linear
%and angular momenta, energies, forces, and torques 
%help symbolic             %type this if need help on symbolic functions
clear;
format compact;            %Suppress extra line-feeds on outputs
u=[1,1,1];                 %vector used for component sum
m=[1,2,3];                 %mass vector
M=sum(m);                  %total mass
r =[5,4,0;-1,2,0;1,-3,0];  %position vectors
v =[4,0,0;-1,2,0;0,-6,0];  %velocity vectors
a =[4,0,0;2,0,0;0,-6,0];   %acceleration vectors
rcm =[1.0,-0.1667,0];      %center of mass position vector
vcm =[0.3333,-2.3333,0];   %center of mass velocity vector
acm =[1.3333,-3.0000,0];   %center of mass acceleration vector          
for i=1:3
    p(i,:)=m(i)*v(i,:);                %momentum calculation
    l(i,:)=cross(r(i,:),p(i,:));       %angular momentum calculation
    e(i)=dot(p(i,:),p(i,:))/2/m(i);    %kinetic energies
    f(i,:)=m(i)*a(i,:);                %forces
    tau(i,:)=cross(r(i,:),f(i,:));     %torques
end
p                                      %obtained momenta
P=u*p                                  %net momentum 1st way
P=M*vcm                                %P center of mass way
l                                      %obtained angular momenta
L=u*l                                  %net angular momentum
e                                      %energies
E=sum(e(:))                            %total kinetic energy
f                                      %obtained forces
F=u*f                                  %net force 1st way
F=M*acm                                %F center of mass way
tau                                    %obtained torques
Tau=u*tau                              %Net torque