clear;
clc;clear;close;
s=poly(0,'s');
I=3*s/(s+2)/(s+4);
disp('given transfer function:',I);
zero=roots(3*s);
pole=roots((s+2)*(s+4));
disp('Zeroes of transfer function:',zero);
disp('Poles of transfer function:',pole);
plzr(I);



