function signal = TFRI1D(F)
    N = length(F);
    if N <= 1
        signal = F; % Cas de base
    else
        pairs = TFRI1D(F(1:2:end)); % TFRI des indices pairs
        impairs = TFRI1D(F(2:2:end)); % TFRI des indices impairs
        fact_rotation = exp(2j * pi * (0:N/2-1) / N); %Facteur de rotation inverses
        signal = [pairs + fact_rotation .* impairs, pairs - fact_rotation .* impairs];
    end
    %signal = signal / N; on ne normalise dans TFRI2D
end

