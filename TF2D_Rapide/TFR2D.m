function F = TFR2D(matrice)
    [ligs, cols] = size(matrice);
    % Appliquer la TFR1D sur chaque ligne
    Y = zeros(ligs, cols);
    for i = 1:ligs
        Y(i, :) = TFR1D(matrice(i, :));
    end

    % Appliquer la TFR1D sur chaque colonne
    F = zeros(ligs, cols);
    for j = 1:cols
        F(:, j) = TFR1D(Y(:, j));
    end
end