Dab= input('Enter Dabvalue:'); 
Dbc= input('Enter Dbcvalue:'); 
Dca= input('Enter Dac value:'); 
GMD=(Dab*Dbc*Dca)^(1/3);
dia=input('Enter conductor diameter in in:'); 
r=dia/2;
d=input('Enter Bundle Spacing in inch:'); 
Ds=input('Enter GMR(Ds) in inch:df'); 
GMRL=(sqrt(d*Ds))/12; 
GMRC=(sqrt(d*r))/12;
disp('Value of L in mH/KM:'); 
L = 0.2*log(GMD/GMRL)
disp('Value of C in µF/KM:'); 
C = 0.0556/log(GMD/GMRC)