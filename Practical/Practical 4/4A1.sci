clear;
//Fourier Transform of x(t)=exp(-a*t)*cos(wc*t)*u(t)
clear;
clc;
a=1;
wc=1;
Dt=0.005;
t=0:Dt:10;
xt=(exp(t*(-a+wc))+exp(t*(-a-wc)))/2;
Wmax=2*%pi*1;
K=4;
k=0:(K/1000):K
W=k*Wmax/K;
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=abs(XW);
[XW_Phase,db]=phasemag(XW);
//Plotting Continuos Time Signal
figure(1)
plot(t,xt);
xlabel('t in sec');
ylabel('x(t)')
title('Continuous Time Signal')
figure(2)
//Plotting Magnitude Response of CTS
subplot(2,1,1)
plot(W,XW_Mag);
xlabel('Frequency in Radians/Seconds>W');
ylabel('abs(X(jW))')
title('Magnitude Response(CTFT)')
//Plotting Phase Response of CTS
subplot(2,1,2);
plot(W,XW_Phase*%pi/180);
xlabel('Frequency in Radians/Seconds>W');
ylabel('<X(jW)')
title('Phase response (CTFT) in Radians')
