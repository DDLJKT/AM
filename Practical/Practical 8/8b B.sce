//To draw the pole-zero plot
clear;
clc;
close;
z=%z;
H1Z=(z)/(z^2-z-1);
plzr(H1Z)
