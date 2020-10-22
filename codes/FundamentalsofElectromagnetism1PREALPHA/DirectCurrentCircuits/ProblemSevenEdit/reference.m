%% symbolic variables and constants
V = 120; % Volts
mH2O = 0.237; % kg 1 cup = 0.000237 m^3
DT = 100 - 20; % C Degrees 
Dt = 180; % sec
specific_heat = 4186; % J/Kg C
P_lamps = 100; % W
P_LED = 18; % W
P_spaceHeater = 1500; % W 
 
P_inheater = mH2O * DT * specific_heat / Dt;
fprintf('a) The power rating of the immersion heater is : %.1f Watts.\n',P_inheater);
 
% I_inheater = P_inheater / V;
 
I_tot = 4 * P_lamps / V + P_spaceHeater / V + P_inheater / V;
fprintf('b) The total current is : %.2f Amps, therefore the breaker will trip.\n',I_tot);
 
%% For the LED of 18 W
I_tot_LED = 4 * P_LED / V + P_spaceHeater / V + P_inheater / V;
fprintf('c) The total current is : %.2f Amps, therefore the breaker will trip.\n',I_tot_LED);