clear;
clc;
close;
A=1;
Dw= 0.005;
WI=4;
w=-WI/2:Dw:WI/2;
for i=1:length(w) 
    if w(i)==0 then
        XW(i)= 2*%pi;
    else
        XW(i)= 0;
    end
end
XW=XW';
subplot(2,1,1);
plot(w,XW); 
t=-3*%pi:%pi/length(w):3*%pi;
xt=(1/(2*%pi))*XW*exp(sqrt(-1)*w'*t)*Dw; 
xt = real(1+xt);
subplot(2,1,2); 
plot(t,xt);
xlabel('t time in Seconds');
title('Time Domian Signal x(t)');
