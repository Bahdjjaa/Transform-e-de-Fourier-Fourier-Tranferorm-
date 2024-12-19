t = 0:0.01:1;
f = 5;
signal = sin(2 * pi * f * t);

tfd = TFD1D_Discrete(signal);
tfdi = TFDI1D_Discrete(tfd);

plotResultat1D(t, signal, tfd, tfdi);