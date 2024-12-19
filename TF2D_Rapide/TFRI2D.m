function FI = TFRI2D(F)
    [ligs, cols] = size(F);

    % Appliquer la TFRI 1D sur chaque ligne
    X = zeros(ligs, cols); 
    for i = 1:ligs
        X(i,:) = TFRI1D(F(i,:));
    end
       
    % Appliquer la TFRI 1D sur chaque colonne
    FI = zeros(ligs, cols);
    
    for j = 1:cols
        FI(:,j)=TFRI1D(X(:,j).');
    end

    %for j = 1:cols
     %   X(:, j) = TFRI1D(F(:, j).');
    %end
    %for i = 1:ligs
     %   FI(i, :) = TFRI1D(X(i, :)); 
    %end

    % Normalisation
    FI = FI / (ligs * cols); % Diviser pour retrouver les bonnes amplitudes
end
