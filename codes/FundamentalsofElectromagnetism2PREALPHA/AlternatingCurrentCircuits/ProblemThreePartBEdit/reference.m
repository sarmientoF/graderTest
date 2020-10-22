%% symbolic variables and constants

Vin = 110; % V
Vout = 12; % V
P = 50; % W

% To find the current
VinRMS = Vin / sqrt(2);
VoutRMS = Vout / sqrt(2);
IoutRMS = P / VoutRMS;
IinRMS = P / VinRMS;

% To find the ratio
k = Vin / Vout;

% To find the resistance
Rout = VoutRMS / IoutRMS;
Rin = VinRMS / IinRMS;

fprintf('The rms current in the secondary coil of the transformer is : %0.2f A \n', IoutRMS);
fprintf('The rms current in the primary coil of the transformer is : %0.2f A \n', IinRMS);
fprintf('The ratio of the number of primary to secondary turns is : %0.2f \n', k);
fprintf('The resistance of the train is : %0.2f Ohms \n', Rout);
fprintf('The resistance seen by the 110-V source is : %0.2f Ohms \n', Rin);