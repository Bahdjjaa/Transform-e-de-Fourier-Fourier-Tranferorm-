function TFD2 = TFD2D_Discrete(f)
    [ligs, cols] = size(f);
    TFD2 = zeros(ligs ,cols);
    for u = 1:ligs
        for v = 1:cols
            somme = 0;
            for x = 1:ligs
                for y =  1:cols
                    somme = somme + f(x, y) * exp(-2j * pi * ((u-1) * (x-1)/ligs + (v-1)*(y-1)/cols));
                end
            end
            TFD2(u, v) = somme;
        end
    end
end