clc();
a1=3;
a2=7;
b1=9;
b2=2;
//Define Complex Numbers
z1=complex(a1,b1);
z2=complex(a2,b2);
z3=z1-z2;
//Finding Real and Imaginary part of z3
a3=real(z3);
b3=imag(z3);
//Making Graph
figure(0);
clf;
hf=gcf();
hf.background=-2;
ha=gca();
ha.data_bounds=[-5,-5;5,5];
xgrid();
//Plotting Graph
plot([0 a1],[0 b1],'b','linewidth',3);
plot([0 a2],[0 b2],'r','linewidth',3);
plot([0 a3],[0 b3],'g','linewidth',3);
xlabel('Real Axis(Re)','fontsize',2);
ylabel('Imaginary Axis(Im)','fontsize',2);
legend('$\large{z_{1}}$','$\large{z_{2}}$','$\large{z_{3}}$');
plot(0,0,'sk');
plot(a1,b1,'sk');
plot(a2,b2,'sk');
plot(a3,b3,'sk');
//Finding Polar Format
r1=sqrt(a1^2+b1^2);
r2=sqrt(a2^2+b2^2);
r3=sqrt(a3^2+b3^2);
phi1=atan(b1/a1)*180/%pi;
phi2=atan(b2/a2)*180/%pi;
phi3=atan(b3/a3)*180/%pi;
//Displaying Values
printf('%s\t%s\t%s\t%s\n','a','b','r','phi');
printf('%4.2f\t%4.2f\t%4.2f\t%4.2f\n',a1,b1,r1,phi1);
printf('%4.2f\t%4.2f\t%4.2f\t%4.2f\n',a2,b2,r2,phi2);
printf('%4.2f\t%4.2f\t%4.2f\t%4.2f\n',a3,b3,r3,phi3);



