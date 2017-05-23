clear all;
close all;
% Calcul de la vitesse sans friction.
g = 9.81;
m = 80;
h0 = 30;
hf = 12.27;

Vmax = 45/3.6;
Vmin = 10/3.6;

Ve = 22.5/3.6;

Ep0 = m.*g.*h0;
Epf = m.*g.*hf;
Ec0 = 0;
vf = sqrt(((Ep0-Epf).*2)/m);
Ecf = 0.5.*m.*Ve.^2;
W = Ep0 + Ec0 - Epf - Ecf;
u= -(W / (m * -g * 25));
disp(u);
