clear;
p1=xlsread('oct2013.xlsx'); % To read data from excel file 
p2=xlsread('oct2014.xlsx'); 
plot(p1(:,1),p1(:,3),'b') 
hold on 
plot(p2(:,1),p2(:,3),'y')
grid on
title('Minimum Temperature of Delhi in October 2013 and 2014 and forecast for October 2015')
xlabel('Date')
ylabel('Temperature in Celsius')

for i= 1:31
    p3(i,:)= (p1(i,:)+p2(i,:))/2; % To find average of data of october 2013 and 2014
end
plot(p3(:,1),p3(:,3),'g')
% To find moving average forecast data from average data found above
for k=1:3
    p4(k,:)=p3(k,:);    
end
for l=29:31
    p4(l,:)=p3(l,:);
end
for s=4:28
    p4(s,1)=s;
end

for r=4:28
    for j=r-3:r+3
    p4(r,2:3)=p4(r,2:3)+p3(j,2:3);
    
    end
   p4(r,2:3)=p4(r,2:3)/7;
end

plot(p4(:,1),p4(:,3),'r')
axis([1 31 10 30])
legend('Min 2013','Min 2014','Avg of 2013 & 2014','Moving Average Forecast for 2015')
hold off

