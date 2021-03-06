function Hd = kaiser_181
%KAISER_181 Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.11 and DSP System Toolbox 9.13.
% Generated on: 09-Jan-2022 00:40:12

% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in kHz.
Fs = 3840;  % Sampling Frequency

Fpass = 85;              % Passband Frequency
Fstop = 110;             % Stopband Frequency
Dpass = 0.057501127785;  % Passband Ripple
Dstop = 0.1;             % Stopband Attenuation
flag  = 'scale';         % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(Fs/2), [1 0], [Dstop Dpass]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
Hd = dfilt.dffir(b);

% [EOF]
