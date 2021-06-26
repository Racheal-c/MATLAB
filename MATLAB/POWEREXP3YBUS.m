clc
clear all
disp('');
b = input('Enter no. of buses:');
s = input('Enter no. of impedences:');

for i= 1:s
sb(i)= input('Enter starting bus no:');
rb(i)=input('Enter receiving bus no:');
imp(i)=input('Enter impendance of bus:');
lc(i)=input('Enter line charging admittance:');
ybus=diag(0,b-1);
end
for i= 1:s 
    kl=sb(i);
    k2=rb(i); 
    adm(i)=1/imp(i);
    ybus(k1,k1)=ybus(k1,k1)+adm(i)+lc(i);
    ybus(k2,k2)=ybus(k2,k2)+adm(i)+lc(i);
    ybus(k1,k2)=-adm(i);
    ybus(k2,k1)=ybus(k1,k2);
end
disp('bus admittance matrix is:') 
disp(ybus)