matrix=zeros(32,32);
matrix(11:21,11:21)=1;

%Afficher la fonction originale
figure;
imshow(matrix);
title('Fonction originale');

% Calculer la tranfomé de Fourrier 2D Directe Discrete
F = TFD2D_Discrete(matrix);

% Afficher la magnitude de la transformé de Fourier
figure;
imshow(log(1 + abs(F))); %Pour un meilleure visibilité
title("Transformé de Fourier 2D Directe Discrete (Magnitude)");

% Calculer l'inverse de la tranfromé
FI = TFDI2D_Discrete(F);

% Afficher La fonction récupérée
figure;
imshow(real(FI));
title("Fonction récupérée");
