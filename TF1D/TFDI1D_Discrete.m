function TFDI = TFDI1D_Discrete(TFD)
    N = length(TFD);
    TFDI = zeros(1, N);
    for n = 0:N-1
        for k = 0:N-1
            TFDI(n+1) = TFDI(n+1) + TFD(k+1) * exp(1j * 2 * pi * k * n / N);
        end
    end
    TFDI = TFDI / N;
end