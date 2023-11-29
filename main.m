N = 256;

noise = genWhiteNoise(1, N);
ar1 = genAR1(1, 1, N);
sin = genVarSine(1, 100, 1000, 256);

bccSig = BiasedCrossCorr(noise, N-1);
bccAr1 = BiasedCrossCorr(ar1, N-1);
bccSin = BiasedCrossCorr(sin, N-1);

ubccSig = UnbiasedCrossCorr(noise, N-1);
ubccAr1 = UnbiasedCrossCorr(ar1, N-1);
ubccSin = UnbiasedCrossCorr(sin, N-1);



n = linspace(0,N,N);

figure;


subplot(3, 1, 1); 
plot(n, bccSig); 
title('BiasedCrossCorr white noise'); 


subplot(3, 1, 2);
plot(n, bccAr1); 
title('BiasedCrossCorr AR1'); 


subplot(3, 1, 3); 
plot(n, bccSin); 
title('BiasedCrossCorr sinusoid'); 


