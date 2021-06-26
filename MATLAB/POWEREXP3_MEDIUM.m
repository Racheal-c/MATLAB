clc
clear all
z=[];
z=input('Enter the length of line(km),Receiving voltage(v),Power(W),Powerfactor,L,R&C(per phase per km=)');
l=z(1);vr=z(2);p=z(3);pf=z(4);L=z(5);R=z(6);c=z(7);
z=32+(i*81);
y=(i*314)*(c/1000000)*l;
disp('Medium Transmission line by nominal T method:')
disp(z);
disp(y);
A=1+((y*z)/2);C=y;B=z*(1+((y*z)/6));D=1+(y*z)/2;
disp('Generalized ABCD Constants are:')
disp(A);
disp(B);
disp(C);
disp(D);
ir=p/(1.732*vr*0.8);
ir1=0.2186+(i*-0.1642);
vrph=vr/1.732;
vs=(A*vrph)+(ir1*B);
fprintf('Sending end voltage Vs is %f\n',vs);
vs1=1.732*abs(vs);
is=(vrph*C)+(D*ir1);
fprintf('Sending end current Is is %f\n',is);
reg=((vs1/abs(A))-vr)*100/vr;
fprintf('Voltage Regulation is %f\n',reg);
pows=1.732*vs1* abs(is)*0.809;
eff=p*100/pows;
fprintf('Efficiency is %f\n',eff);