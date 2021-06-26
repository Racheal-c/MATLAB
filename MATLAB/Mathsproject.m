%% 2 point forward
fthp= input('Enter value of f(t+h):');
ft= input('Enter value of f(t):');
h= input('Enter value of h:');
a = (fthp - ft)/h

%% 3 point central
fthp = input('Enter value of f(t+h):');
fthm = input('Enter value of f(t-h):');
h= input('Enter value of h:');
a = (fthp-fthm)/(h*2)

%% 2 point backward
ft= input('Enter value of f(t):');
fthm= input('Enter value of f(t-h):');
h= input('Enter value of h:');
a = (ft-fthm)/h

%% 3 point forward
ft = input('Enter value of f(t):');
fthp = input('Enter value of f(t+h):');
ft2hp = input('Enter value of f(t+2h):');
h= input('Enter value of h:'); 
a = ((-3.*ft + 4.*fthp - ft2hp))/(2*h)

%% 3 point backward
ft2hm = input('Enter value of f(t-2h):');
fthm = input('Enter value of f(t-h):');
ft = input('Enter value of f(t):');
h= input('Enter value of h:');
a = (ft2hm - 4.*fthm + 3.*ft )/(2*h)

%% 5 point difference
ft2hm = input('Enter value of f(t-2h):');
fthm = input('Enter value of f(t-h):');
fthp = input('Enter value of f(t+h):');
ft2hp = input('Enter value of f(t+2h):');
h= input('Enter value of h:');
a = ( ft2hm - 8.*fthm + 8*fthp - ft2hp )/(12*h)