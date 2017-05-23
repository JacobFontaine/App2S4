clear all;
close all;
%% Design du Bassin.

Kf = 0.95;  %
b = 47;     %kg/m.
m = 80;     %kg.
g = 9.81;   %m/s^2.
h = 10;     %m.

Ffin = 1.10;
Vi = abs(sqrt(2.*g.*h));
Ve = abs(sqrt((m.*g.*(Kf-1)/b)));

syms zf;

i = 4.9644;
j = ((-g/Ve.^2).*(Kf-1) + (b/m)).*zf;
r1 = solve(j == i);
disp(double(r1));