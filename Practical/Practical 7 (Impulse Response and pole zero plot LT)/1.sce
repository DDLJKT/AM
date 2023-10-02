clc;clear;
s=poly(0,'s');
n=(s+1)*(s+3);
d=(s+2)*(s+4);
f=n/d;
disp('Given Transfer Function: ' ,f);
zero=roots(n);
pole=roots(d);
disp('Zero of transfer function: ',zero);
disp('Pole of transfer function: ',pole);
plzr(f);
