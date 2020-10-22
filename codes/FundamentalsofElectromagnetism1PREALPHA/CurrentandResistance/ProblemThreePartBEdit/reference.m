%% symbolic variables and constants

P_bulb = 0.016; %kW
timeH = 365 * 4;
priceKh = 0.1;
Cost = P_bulb*timeH*priceKh;

fprintf ( 'The cost to run the LED bulb for one year if it runs for four hours a day is : %.2f dollars \n' , Cost);