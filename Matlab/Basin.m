clear all;
close all;
%% Design du Bassin.

Kf = 0.95;  %
b = 47;     %kg/m.
m = 80;     %kg.
g = 9.81;   %m/s^2.
h = 10;     %m.

Ffin = 1.10;
Ve = sqrt((m.*g.*(Kf-1)/b));
syms dv;
d_dv = diff(dv);

dz = (m.*d_dv)/((-g.*(Kf-1)/Ve.^2)+(b/m.*dv));






