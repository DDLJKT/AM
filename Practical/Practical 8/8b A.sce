//To draw the pole-zero plot
clear;
clc;
close;
z=%z;
H1Z=((z)*(z+1)/(z^2-z+0.5));
plzr(H1Z)
