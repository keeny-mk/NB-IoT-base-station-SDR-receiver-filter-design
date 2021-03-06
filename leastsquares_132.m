function Hd = leastsquares_132
%LEASTSQUARES_132 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.11 and DSP System Toolbox 9.13.
% Generated on: 09-Jan-2022 02:43:24

% FIR least-squares Lowpass filter designed using the FIRLS function.

% All frequency values are in kHz.
Fs = 3840;  % Sampling Frequency

N     = 132;  % Order
Fpass = 90;   % Passband Frequency
Fstop = 95;   % Stopband Frequency
Wpass = 10;   % Passband Weight
Wstop = 1;    % Stopband Weight

% Calculate the coefficients using the FIRLS function.
b  = firls(N, [0 Fpass Fstop Fs/2]/(Fs/2), [1 1 0 0], [Wpass Wstop]);
Hd = dfilt.dffir(b);

% [EOF]
