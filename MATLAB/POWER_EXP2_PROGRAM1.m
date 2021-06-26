Dab= input('Enter Dab value:'); 
Dbc= input('Enter Dbc value:'); 
Dca= input('Enter Dac value:'); 
GMD=(Dab*Dbc*Dca)^(1/3);
GMRL= input('Enter GMRL(GMR) Value in ft (inch/12): '); 
disp('Value of L in mH/KM:');
L = 0.2*log(GMD/GMRL)
dia= input('Enter conductor diameter in inch:'); 
r=dia/2; GMRC=r/12;
disp('Value of C in µF/KM:'); 
C = 0.0556/log(GMD/GMRC)