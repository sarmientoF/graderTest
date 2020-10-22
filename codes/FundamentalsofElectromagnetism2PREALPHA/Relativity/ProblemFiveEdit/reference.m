%% symbolic variables and constants

P = 3.85e+26; % W
n = 0.7e-2; % percent
c = 3e+8; % m/s
mSun = 1.989e+30; % kg

DmHDt = P / c^2 / n;
tSec = mSun * 0.9 / 2 / DmHDt;
DmSunDt = DmHDt * n;
mLost = DmSunDt * tSec / mSun * 100;
tYear = tSec / 365 / 24 / 60 / 60; 

fprintf('The amount of kilograms of hydrogen that undergo fusion each second is : %0.3e kg \n', DmHDt);
fprintf('The time that the sun can produce energy at its current rate is : %0.3e years \n', tYear);
fprintf('The amount of kilograms the sun is losing per second is : %0.3e kg \n', DmSunDt);
fprintf('The mass it will have lost in the time found in part (b) is : %0.3f percent \n', mLost);