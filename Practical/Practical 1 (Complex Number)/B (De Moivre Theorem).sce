a1=3;
b1=4;
a2=4;
b2=5;
a3=5;
b3=6;
a4=6;
b4=7;
z1=complex(a1,b1);
z2=complex(a2,b2);
z3=complex(a3,b3);
z4=complex(a4,b4);
n1=2;
n2=3;
n3=4;
n4=5;
z11=z1^n1;
z22=z2^n2;
z33=z3^n3;
z44=z4^n4;
r1=sqrt(a1^2+b1^2);
r2=sqrt(a2^2+b2^2);
r3=sqrt(a3^2+b3^2);
r4=sqrt(a4^2+b4^2);
phi1=atan(b1/a1);
phi2=atan(b2/a2);
phi3=atan(b3/a3);
phi4=atan(b4/a4);
r11=r1^n1;
r22=r2^n2;
r33=r3^n3;
r44=r4^n4;
phi11=phi1*n1;
phi22=phi2*n2;
phi33=phi3*n3;
phi44=phi4*n4;
p11=r11*(cos(phi11)+%i*sin(phi11));
p22=r22*(cos(phi22)+%i*sin(phi22));
p33=r33*(cos(phi33)+%i*sin(phi33));
p44=r44*(cos(phi44)+%i*sin(phi44));
z=(z11*z22)/(z33*z44);
p=(p11*p22)/(p33*p44);
disp(z);
disp(p);

