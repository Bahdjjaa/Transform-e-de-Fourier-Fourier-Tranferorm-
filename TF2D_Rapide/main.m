% Générer une matrice aléatoire
N = 32; % taille de la matice
matrice = zeros(N, N);
matrice(11:21, 11:21) = 1;

%Afficher ma matrice originale
figure;
imshow(matrice);
title('Matrice Originale');

% Calculer la TFR 2D
F = TFR2D(double(matrice));

% Méthode matlab
F_matlab = fft2(matrice);

% Afficher la magnitude de la TFR 2D
figure; 
imshow(log(1 + abs(F))); % Pour un meilleur contraste
title('Transformée de Fourier Rapide 2D (Magnitude)');

% Afficher le résultat de fft2
figure;
imshow(log(1 + abs(F_matlab))); % Pour un meilleur contraste
title('Transformée de Fourier Rapide 2D fft2(Magnitude)');

% Calculer la TFRI 2D
matrice_recup = TFRI2D(F);

% Calculer l'inverse avec la méthode ifft2
matrice_recup_matlab = ifft2(F_matlab);

% Eliminer les ésidus imaginaires
matrice_recup = real(matrice_recup);
matrice_recup_matlab = real(matrice_recup_matlab);


% Afficher la matrice construite
figure; 
imshow(matrice_recup);
title('Matrice Reconstruite après TFRI 2D');

% Afficher la matrice construite
figure;
imshow(matrice_recup_matlab);
title('Matrice Reconstruite après TFRI 2D ifft2');