clear all;
close all;
xp = [0 8 15 20 25];
%Verification de tous les valeurs possibles entre 10 et 15m.

Ey = 10:0.01:15;
result = 0;
for i = 1:length(Ey)
    yf = [30 19 20 16 Ey(i)];
    NmoinsM =0;
    A = ApproximationLineaire(xp, yf, NmoinsM);
    syms x;
    g = 0;
    for j = 1:(length(xp)-NmoinsM)
        g = g + A(j)*x.^(j-1);
    end
    gprime = diff(g);
    evalf = subs(gprime,25);
    if(evalf <= 0.005)
        result = subs(g,25);
    end
end
disp(double(result));