clear;
clc;clear;close;
s=poly(0,'s');
F=10*s/(s^2+2*s+2);
disp('given transfer function:',F);
zero=roots(10*s);
pole=roots(s^2+2*s+2);
disp('Zeroes of transfer function:',zero);
disp('Poles of transfer function:',pole);
plzr(F);


