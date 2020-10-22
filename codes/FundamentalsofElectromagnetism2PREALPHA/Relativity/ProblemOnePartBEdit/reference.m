%% symbolic variables and constants
syms c tau v
syms xx1 yy1 zz1 tt1
syms xx2 yy2 zz2 tt2

c = 3e+8; % m/s
x1 = 0; % m
y1 = 0; % m
z1 = 0; % m
t1 = 0; % s
x2 = 1; % m
y2 = 0; % m
z2 = 0; % m
t2 = 0; % s
v = c/2; % m/s

tt1 = (t1 - v*x1/c^2) / sqrt(1 - (v/c)^2);
xx1 = (x1 - v *t1) / sqrt(1 - (v/c)^2);
yy1 = y1;
zz1 = z1;
SB1 =[xx1 yy1 zz1 tt1];
SB1 = vpa(SB1);

fprintf('The four-vector (x, y, z, t) of the first event is :\n');
fprintf('%0.2f m, %0.2f m, %0.2f m, %0.3e s \n',SB1);

tt2 = (t2 - v*x2/c^2) / sqrt(1 - (v/c)^2);
xx2 = (x2 - v *t2) / sqrt(1 - (v/c)^2);
yy2 = y2;
zz2 = z2;
SB2 =[xx2 yy2 zz2 tt2];
SB2 = vpa(SB2);

fprintf('The four-vector (x, y, z, t) of the second event is :\n');
fprintf('%0.2f m, %0.2f m, %0.2f m, %0.3e s \n',SB2);