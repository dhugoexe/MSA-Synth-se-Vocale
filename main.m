N = 256;
sigma_b = 0.92;
a = 0.92;

noise = genWhiteNoise(0.5, N);
AR1 = filter(1, 1-a, noise);
sin = genVarSine(100, 1000,256);

bccSig = BiasedCrossCorr(noise, N-1);
bccAr1 = BiasedCrossCorr(ar1, N-1);
bccSin = BiasedCrossCorr(sin, N-1);

ubccSig = UnbiasedCrossCorr(noise, N-1);
ubccAr1 = UnbiasedCrossCorr(ar1, N-1);
ubccSin = UnbiasedCrossCorr(sin, N-1);


var(bccSin)
var(bccAr1)
var(bccSig)


n = linspace(0,N,N);

figure(1);

subplot(3, 1, 1); 
plot(n, bccSig); 
title('BiasedCrossCorr white noise'); 


subplot(3, 1, 2);
plot(n, bccAr1); 
title('BiasedCrossCorr AR1'); 


subplot(3, 1, 3); 
plot(n, bccSin); 
title('BiasedCrossCorr sinusoid'); 

figure(2);


subplot(3, 1, 1); 
plot(n, ubccSig); 
title('UnbiasedCrossCorr white noise'); 


subplot(3, 1, 2);
plot(n, ubccAr1); 
title('UnbiasedCrossCorr AR1'); 


subplot(3, 1, 3); 
plot(n, ubccSin); 
title('UnbiasedCrossCorr sinusoid');

figure(3)
subplot(3, 1, 1); 
plot(n, noise); 
title('noise'); 

subplot(3, 1, 2);
plot(n, AR1); 
title('AR1'); 

subplot(3, 1, 3); 
stem(n, sin); 
title('sinusoid');



