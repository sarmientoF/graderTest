% Create a noisy, exponentially decaying signal
% With a random amplitude and frequency.
A = randi([1 5]);    % Amplitude bewteen 1 and 5
f = randi([50 79]);  % frequency between 50 and 79 Hz
Fs = 500;            % Sampling frequency in Hz
dt = 1/Fs;           % Sampling period
L = 512;             % Aquire 512 points
t = (0:L-1)*dt;      % Time vector
S = A*cos(2*pi*f*t) + randn(size(t));   % Signal with noise
% Plot the signal and show the frequency and amplitude
figure; plot(t,S)
title([num2str(f), ' Hz signal with amplitude = ', num2str(A)])
xlabel('Time (s)')
ylabel('Amplitude (A.U.)')

% Take the FFT and find the frequency of the peak


