function TFD = TFD1D_Discrete(signal)
    N = length(signal); % Récupérer la taille du signal
    TFD = zeros(1, N); %initialiser la transformée
    for k = 0:N-1 % Pour chaque coefficient fréquentiel
        for n = 0:N-1 % Pour chaque valeur du signal corréspendante au coefficient
            TFD(k+1) = TFD(k+1) + signal(n+1) * exp(-1j *  2 * pi * k * n / N);
        end
    end
end