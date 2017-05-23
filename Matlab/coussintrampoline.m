clear all
%Ti + Vig + Vir = Tf + Vfg + Vfr
%Ti = 0, puisque la vitesse verticale du participant-ballon est nulle.
%Vig = mghi; m = 88 kg, g = 9.81m/s^2, hi = 5m
%Vir = 0, car le ressort est à sa longueur libre, hc = 0
%Tf = 0, car la vitesse du participant-ballon est de 0 sur le ressort. 
%absorbé par le ressort
%Vfg = mghf, car le ressort sera compressé de hc; hf = hc
%Vfr = 1/2 * kc * hc^2; kc = 6000 N/m, hc = ?

%Vig = Vfr

m = 88;
g = 9.81;

syms hc;

hi = 5;
hf = hc;
kc = 6000;


Vig = m*g*hi;
eqn = Vig - (1/2 * kc * hc.^2 + m*g*hf);

solved = solve(eqn, hc);

disp(double(solved));