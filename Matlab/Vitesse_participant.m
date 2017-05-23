clear all;
close all;
 
xp = [0 8 15 20 25];
yf = [30 19 20 16 12.27];
 
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
 
W = Ep0 + Ec0 - Epf - Ecf ;
u= -(W / (m * -g * 25));
 
    NmoinsM =0;
    A = ApproximationLineaire(xp, yf, NmoinsM);
    x = 0:0.1:25;
    h = 0;
    for j = 1:(length(xp)-NmoinsM)
        h = h + A(j)*x.^(j-1);
    end
v = sqrt(2.*(-g*(h-h0)-u*g*x));
plot(x,v);
xlabel('Distance en mètres');
ylabel('Vitesse en m/sec');
