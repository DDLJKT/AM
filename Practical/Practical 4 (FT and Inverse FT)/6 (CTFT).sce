clear; 
clc;
close; 
// Analog Signal 
A =1; //Anplitude 
Dt = 0.005; 
t=-4.5:Dt:4.5; 
xt = exp(-A *abs(t)); 
// Continuous-tine Fourier Transform 
Wmax = 2*%pi*1; 
K =4; 
k =0:(K/1000):K;
W =k*Wmax/K; 
XW = xt* exp(-sqrt(-1)*t'*W) * Dt; 
XW= real(XW); 
subplot(1,1,1) ;
subplot(2,1,1); 
a = gca(); 
a.y_location ="origin"; 
plot(t,xt); 
xlabel('t in sec.'); 
ylabel('x(t)') 
title('Continuous Time Signal') 
subplot(2,1,2);
a =gca(); 
a.y_location = "origin"; 
plot(W,XW); 
xlabel('Frequcncy in Radians/Seconds W'); 
ylabel('X(jW)') 
title('Continuous-time Fourier Transform')
