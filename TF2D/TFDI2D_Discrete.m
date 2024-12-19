function TFDI2 = TFDI2D_Discrete(TFD2)
    [ligs, cols] = size(TFD2);
    TFDI2 = zeros(ligs, cols); %Initialisation
    for x = 1:ligs
        for y = 1:cols
            somme = 0;
            for u = 1:ligs
                for v = 1:cols
                    somme = somme + TFD2(u, v) * exp(2j * pi * ((u-1)*(x-1)/ligs + (v-1)*(y-1)/cols));
                end
            end
            TFDI2(x, y) = somme / (ligs*cols); %Normalisation
        end
    end
end