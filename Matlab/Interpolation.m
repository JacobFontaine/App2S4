clear all;
close all;
xp = [0 8 15 20 25];
yf = [30 19 20 16 12.27];

result = 0;
gOptimal = 0;
hold on
plot(xp,yf,'o');
    NmoinsM =0;
    A = ApproximationLineaire(xp, yf, NmoinsM);
    x = 0:0.1:25;
    g = 0;
    for j = 1:(length(xp)-NmoinsM)
        g = g + A(j)*x.^(j-1);
    end
plot(x,g);
title("Courbe de la glissade")
ylabel("Hauteur (m)")
xlabel("Distance (m)")
ylim ([0 30])
grid on 
hold off
