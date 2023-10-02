clear;
//Continuous Time fourier transform of a signal x(t)=exp(-A*t)u*(t),t>0
clear;
clc;
close;
//Analog signal
A=1; 
T=1    //AMPLItude
Dt=0.005;
t=0:Dt:10;
xt=A*exp(-t/T);
//Continuous-time fourier transform 
Wmax=2*%pi*1;     //Analog frequency=1Hz
K=4;
k=0:(K/1000):K;
W=k*Wmax/K;
XW=xt*exp(-sqrt(-1)*t'*W)*Dt;
XW_Mag=abs(XW);
[XW_Phase,db]=phasemag(XW);
//plotting Continuous time signal
a=gca();
a.y_location="origin";
plot(t,xt);
xlabel('t in sec.');
ylabel('x(t)')
title('Continuous time signal')
figure
//plotting Magnitude response of CTS
subplot(2,1,1)
a=gca();
a.y_location="origin";
plot(W,XW_Mag);
xlabel('Frequency in radians/seconds-->W');
ylabel('abs(X(jW))')
title('Magnitude Response Of CTFT')
//plotting Phase response of CTs
subplot(2,1,2);
a=gca();
a.y_location="origin";
a.x_location="origin";
plot(W,XW_Phase*%pi/180);
xlabel('          Frequency in radians/seconds-->W');
ylabel('        <X(jW)')
title('Phase Response (CTFT)in Radians')
