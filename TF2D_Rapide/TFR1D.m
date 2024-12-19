function F = TFR1D(signal)
    N = length(signal);
    if N <= 1
        F = signal; % Cas de base : si taille = 1
    else
        pairs = TFR1D(signal(1:2:end)); % TFR des indices pairs
        impairs = TFR1D(signal(2:2:end)); % TFR des indices impairs
        fact_rotation = exp(-2j * pi * (0:N/2-1) / N);  % Facteurs de rotation
        F = [pairs + fact_rotation .* impairs, pairs - fact_rotation .* impairs]; % Combinaison
    end
end