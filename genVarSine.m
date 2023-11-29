function y = genVarSine(A, f, fs, N)
    % A is the amplitude of the sinusoid
    % f is the frequency of the sinusoid
    % fs is the sampling frequency
    % N is the number of samples to generate

    % Generate a random phase between 0 and 2pi
    phi = 2 * pi * rand();

    % Generate the time vector
    t = (0:N-1) / fs;

    % Generate the sinusoidal wave
    y = A * sin(2 * pi * f * t + phi);
end
