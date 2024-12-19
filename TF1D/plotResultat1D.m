function plotResultat1D(t, signal, TFD, signal_recup)
    figure;
    subplot(3, 1, 1);
    plot(t, signal);
    title("Signal Sinusoïdal (Domaine Tomporel)");
    xlabel("Temps (s)");
    ylabel("Amplitute");

    subplot(3, 1, 2);
    stem(abs(TFD));
    title("Amplitude de la Transformée de Fourier (Domaine Fréquentiel)");
    xlabel("Fréquence");
    ylabel("|Amplitude|");

    subplot(3, 1, 3);
    plot(t, real(signal_recup));
    title("signal Récupéré via l'inverse de Fourier");
    xlabel("Temps (s)");
    ylabel("Amplitude");
end
    