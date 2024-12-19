% Définir in signal 1D
signal = randn(1, 32);

% Affichier le signal original
figure;
subplot(3, 1, 1);
plot(signal); % Tracer une courbe continue
%grid on;
title('Signal Original');
xlabel('Index');
ylabel('Amplitude');

% Calcul de la TFR 1D
F = TFR1D(signal);

% Afficher la magnitude de la TFR
subplot(3, 1, 2);
stem(abs(F));
title('Transformée de Fourier Rapide 1D (Magnitude)');
xlabel('Fréquence');
ylabel('Amplitude');

% Calculer la TFRI 1D
singal_recup = TFRI1D(F);

% Afficher le signal recontruit
subplot(3, 1, 3);
plot(real(singal_recup)); % Courbe du signal reconstruit
%grid on;
title('Signal Reconstruit après IFFT');
xlabel('Index');
ylabel('Amplitude');