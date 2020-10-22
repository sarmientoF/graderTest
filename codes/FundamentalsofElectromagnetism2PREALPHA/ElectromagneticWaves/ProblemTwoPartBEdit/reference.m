%% symbolic variables and constants

c = 3e+8; % m/s
Savg = 1e+3; % W/m^2
A = 0.8; % m^2

Power = Savg * A;
Pressure = Savg / c ;

fprintf('The energy reaching the sunbather’s skin per second is : %0.2f W \n', Power);
fprintf('The pressure that the sunlight exerts if it is absorbed is : %0.3e N/m^2 \n', Pressure);