% Usage: r = d1fd2p(f,x,h)
% 2-point forward difference formula for 1-st derivative
%
% Input:
% f - Matlab inline function 
% x - point where the derivative is computed
% h - stepsize
%
% Output:
% r - computed value of the derivative
%
% Examples:
% r=d1fd2p(@sin,0,.1);
% r=d1fd2p(@myfunc,0,.1);          here 'myfunc' is a user-defined function in M-file
% r=d1fd2p(inline('sin(x)'),0.1);
% r=d1fd2p(inline('sin(x)-cos(x)'),.1);

function r = d1fd2p(f,x,h)
r = (f(x+h)-f(x))/h;