clear;
p1=xlsread('oct2013.xlsx');
p2=xlsread('oct2014.xlsx');
plot(p1(:,1),p1(:,2),'g')
hold on 
plot(p2(:,1),p2(:,2),'c')
title('Max and Min Temperature of Delhi in October 2013 and 2014')
xlabel('date')
ylabel('Temperature in Celsius')
plot(p1(:,1),p1(:,3),'r')
plot(p2(:,1),p2(:,3),'b')
axis([1 31 10 40])
legend('max 2013','max 2014','min 2013','min 2014')
hold off


