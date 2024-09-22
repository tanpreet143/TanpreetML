data=load('hw1_data1.txt');
sales=data(:,1);
revenue=data(:,2);
m=0.0528;
c=3.35;
predictedValue=m*sales+c;
remainingValue=revenue-predictedValue;
%for RSS
RSS=sum(remainingValue.^2);

%for TSS
meanRevenue=mean(revenue);
TSS=sum((revenue-meanRevenue).^2);

%for R Square
RSquare=1-(RSS/TSS);


fprintf('Residual Sum of Squares (RSS): %.2f\n', RSS);
fprintf('Total Sum of Squares (TSS): %.2f\n', TSS);
fprintf('R Square Value: %.2f\n', RSquare);