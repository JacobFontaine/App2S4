clear all
%Ti + Vig + Vir = Tf + Vfg + Vfr
%Ti = 0, puisque le participant n'a pas de vitesse à la verticale
%Vig = mgh0; m = 88 kg, g = 9.81m/s^2, h0 = 5m
%Vir = 0, car le ressort est à sa longueur libre, hc = 0
%Tf = 0, car le participant-ballon sera sur le ressort et sa vitesse
%absorbé par le ressort
%Vfg = 0, car le participant-ballon est sur le ressort
%Vfr = 1/2 * kc * hc^2; kc = 6000 N/m, hc = ?

%Vig = Vfr

m = 88;
g = 9.81;
h0 = 5;
kc = 6000;

Vig = m*g*h0;

Vfr = Vig;
hc = -sqrt((2*Vfr)/kc);
disp(hc);