clear;
//Pole-Zero Plots
z=%z;
az=2*z*(z+1);
bz=(z-1/3)*(((z^2)+1/4)+4*z+5);
poles=roots(bz);
zeroes=roots(az);
h=az/bz;
plzr(h)
