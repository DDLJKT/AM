//Discrete Time Forier Transform ofx [n]= 1, abs(n)<=NI
clear;
clc;
close;
//DIS Signal
N1 =2;
n=-N1:N1;
x= ones(1,length(n)); 
//Discrete-time Fourier Transform
Wmax = 2*%pi;
K=4;
k=0:(K/1000):K;
W =k*Wmax/K
XW =x* exp(-sqrt(-1)*n'*W);
XW_Mag=real(XW); 
//plot for abs(a)<1
figure
subplot(2, 1, 1);
a = gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d3('gnn',n,x);
xtitle('Discrete Time Sequence x[n]')
subplot(2,1,2);
a =gca();
a.y_location ="origin";
a.x_location ="origin";
plot2d( W,XW_Mag);
title('Discrete Time Fourier Transform X(exp(jW))')
