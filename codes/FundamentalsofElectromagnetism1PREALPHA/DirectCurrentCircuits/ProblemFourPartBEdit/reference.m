%% symbolic variables and constants
syms I1 I2 I3 R1 R2 R3 V1 V2
R1 = 2*1e3; % Ohms
R2 = 1*1e3; % Ohms
R3 = 1*1e3; % Ohms

R = [[1+2 -2]
    [-2 2+1]]*1e3;
V1 = [1.6;-1.4];
I_1 = inv(R)*V1;
V2 =[1.6;1.4];
I_2 = inv(R)*V2;

%%  part B1 
I1 = I_1(1) - I_1(2);
I2 = I_1(1);
I3 = I_1(2);
Ia = [I1 I2 I3];
Ra = [R1 R2 R3];
Power1c = sum(Ia.^2 .* Ra);
Power1 = V1(1)*I_1(1) + abs(V1(2))*abs(I_1(2)); 

for i = 1:numel(Ia)
    fprintf ( 'The current I%i in circuit (a) is : %.2e Amps \n' , i,Ia(i));
end
fprintf ( 'The power consumed in circuit (a) is : %.2e Watts \n' , Power1c);
fprintf ( 'The power supplied to circuit (a) is : %.2e Watts \n' , Power1);
 
%%%  part B2
I1 = I_2(1) - I_2(2);
I2 = I_2(1);
I3 = I_2(2);
Ib = [I1 I2 I3];
Rb = [R1 R2 R3];
Power2c = sum(Ib.^2 .* Rb);
Power2 = V2(1)*abs(I_2(1)) + V2(2)*abs(I_2(2)); 

fprintf ( '\n');
for i = 1:numel(Ib)
    fprintf ( 'The current I%i in circuit (b) is : %.2e Amps \n' , i,Ib(i));
end
fprintf ( 'The power consumed in circuit (b) is : %.2e Watts \n' , Power2c);
fprintf ( 'The power supplied to circuit (b) is : %.2e Watts \n' , Power2);

