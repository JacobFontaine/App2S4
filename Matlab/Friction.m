clear all;
close all;
xp = [0 10 20 30 40 50 60 70 80 90 100];
yf = [0.87 0.78 0.71 0.61 0.62 0.51 0.51 0.49 0.46 0.48 0.46];

   figure(8)
   hold on
for z = 3:10
    NmoinsM = z;
    A = ApproximationLineaire(xp, yf, NmoinsM);
    x = 0:10:100;
    g = 0;
    for i = 1:(length(xp)-NmoinsM)
        g = g + A(i)*x.^(i-1);
    end
    M=11-z;
    sum=0;
    for i =1:10
     sum = sum+((g(i)-yf(i)).^2); 
    end
    y = sqrt((1/11)*sum);
    subplot(4,2,z-2);
    hold on
    plot(x,g);
    xlabel(['M=',num2str(M),' RMS=',num2str(y)]);
    scatter(xp,yf);
    hold off
end
hold off