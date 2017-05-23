close all;
clear all;

%% Variables global.
Vp = 6.25;          % valeur trouver de la vitesse de sorti du participant à l'aide du coefficient mu de la valve et l'eau verser.
Vb = -1;
mb = 8;
mp = 80;

%% Ballon Rebondit
syms vpprime;
e = 0.8;     %%%(v*b - v*p)/(vp-vb) = 0.8;
vbprime = e.*(Vp-Vb) + vpprime;

eq1 = (mb.*Vb + mp.*Vp) == (mb.*vbprime + mp.*vpprime);
r1 = solve(eq1,vpprime);
%disp(double(r1));

%% Ballon Attrape
%e = 0

syms Vpb;
eq2 = (mb.*Vb + mp.*Vp) == (mb + mp).*Vpb;
Vpb = solve(eq2,Vpb);
%disp(double(Vpb));

%% Calcul du deltaT.
%Lors de la fusion du participant et du ballon.

syms dt;
eq3 = Vpb.*dt == 3.0;
dt1 = double(solve(eq3,dt));
disp(dt1); 
eq4 = r1.*dt == 3.0;
dt2 = double(solve(eq4,dt));
disp(dt2);

