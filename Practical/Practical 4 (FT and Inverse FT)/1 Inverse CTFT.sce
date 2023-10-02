clear;
clc;
close;
A=1;
Dw= 0.006;
WI=4;
w=-WI/2:Dw:WI/2;
for i=1:length(w) 
    XW(i)= A;
end 
XW=XW';
plot(w,XW); 
xlabel('w in radians'); 
title('Continuous Time Fourier Transform x(t)')
t=-%pi:%pi/length(w):%pi;
xt=(1/(2*%pi))*XW*exp(sqrt(-1)*w'*t)*Dw; 
xt = real(xt);
figure 
a=gca();
a.y_location="origin";
a.x_location ="origin"; 
plot(t,xt);
xlabel('t time in Seconds');
title('Inverse Continuous Time Fourier Transform x(t)');
