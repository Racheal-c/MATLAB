S = input('Enter row vector [S11, S22, S33] = '); 
H = input('Enter row vector [H12, H23] = ');
d = input('Bundle spacing in inch = ');
dia = input('Conductor diameter in inch = '); r=dia/2; 
Ds = input('Geometric Mean Radius in inch = ');
S11=S(1); S22=S(2); S33=S(3); H12= H(1); H23= H(2); 
a1 = -S11/2 + j*H12;
b1 = -S22/2 + j*0; 
c1=-S33/2-j*H23; 
a2 = S11/2 +j*H12;
b2 = S22/2 + j*0; 
c2=S33/2-j*H23;
Da1b1 = abs(a1 - b1); Da1b2 = abs(a1 - b2); 
Da1c1 = abs(a1 - c1); Da1c2 = abs(a1 - c2); 
Db1c1 = abs(b1 - c1); Db1c2 = abs(b1 - c2); 
Da2b1 = abs(a2 - b1); Da2b2 = abs(a2 - b2); 
Da2c1 = abs(a2 - c1); Da2c2 = abs(a2 - c2); 
Db2c1 = abs(b2 - c1); Db2c2 = abs(b2 - c2); 
Da1a2 = abs(a1 - a2);
Db1b2 = abs(b1 - b2); 
Dc1c2 = abs(c1 - c2);
DAB=(Da1b1*Da1b2* Da2b1*Da2b2)^0.25; 
DBC=(Db1c1*Db1c2*Db2c1*Db2c2)^.25; 
DCA=(Da1c1*Da1c2*Da2c1*Da2c2)^.25; 
GMD=(DAB*DBC*DCA)^(1/3)
Ds = 2.54*Ds/100; r = 2.54*r/100; d = 2.54*d/100;
Dsb = (d*Ds)^(1/2); rb = (d*r)^(1/2); 
DSA=sqrt(Dsb*Da1a2); rA=sqrt(rb*Da1a2); 
DSB=sqrt(Dsb*Db1b2); rB=sqrt(rb*Db1b2); 
DSC=sqrt(Dsb*Dc1c2); rC = sqrt(rb*Dc1c2); 
GMRL=(DSA*DSB*DSC)^(1/3)
GMRC = (rA*rB*rC)^(1/3) 
L=0.2*log(GMD/GMRL) % mH/km
C = 0.0556/log(GMD/GMRC) % micro F/km