clear all;
close all;

xp = [0 10 20 30 40 50 60 70 80 90 100];
yf = [0.87 0.78 0.71 0.61 0.62 0.51 0.51 0.49 0.46 0.48 0.46];
NmoinsM = 8;
A = ApproximationLineaire(xp, yf, NmoinsM);
syms x;
eqn = A(1) + A(2).*x + A(3).*x.^2 == 0.6296;
solx = solve(eqn,x,'MaxDegree', 4);
disp(abs(double(solx)));