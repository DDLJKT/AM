clear;
clc;
a=1;
wc=1;
Dt=0.005;
t=0: Dt:10;
xt=(exp(t*(-a+wc))+exp(t*(-a-wc)))/2;
Wmax=2*%pi*1;
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=abs(XW);
[XW_Phase,db]=phasemag(XW);
//plotting Continuous time signal
figure(1)
plot(t,xt);
xlabel('t in sec,');
ylabel('x(t)')
title('continuous Time signal');
figure(2)
subplot(2,1,1);
plot(W,XW_Mag);
xlabel('frequency in radians/seconds>W');
ylabel('abs(X(jW))')
title('Magnitude response(CTFT)')
//plotting phase response of Cts
subplot(2,1,2);
plot(W,XW_Phase*%pi/180);
xlabel('frequency in radians/seconds>W');
ylabel('<X(jW)')
title('phase response(CTFT) in radians')
