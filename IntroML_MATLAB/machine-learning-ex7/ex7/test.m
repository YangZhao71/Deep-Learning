x = linspace(0,100);
y1 = 0.4*x + 1.7;
y2 = 0.00000000000001*x + 7.5;
y3 = -0.1*x + 10.4;

figure
plot(x,y1,x,y2,'--',x,y3,':')