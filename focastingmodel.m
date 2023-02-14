addpath('/Users/md/Desktop/MATLAB/Power System Analysis Hadi Sadat Toolbox 2')

%cost variable will represents the three fuel cost equations:
cost=[200, 7, 0.008; 180, 6.3, 0.009; 140, 6.8, 0.007];
%mwlimits represents the three generators limits in a matrix:
mwlimits=[10, 85; 10, 80; 10, 70];
%Pdt represents the power demand value
Pdt= 150;
%B represents the matrices of the loss formula for the system
B=[0.0218, 0.0093, 0.0028; 0.0093, 0.0228, 0.0017; 0.0028, 0.0017, 0.0179];
B0=[0.0003, 0.0031, 0.0015];
B00=0.00030523;
basemva= 100;
DISPATCH
GENCOST

%Total cost vs lambda plot
subplot(2,1,1);
plot(lembdaV, totalcostV);
grid on;
title('Total cost vs lambda');
ylabel('Total cost ($/MWh)');
xlabel('Lambda');


%Power loss vs lambda plot
subplot(2,1,2);
plot(lembdaV, Powerlossestotal );
grid on;
title('Power loss vs lambda');
ylabel('Power loss (MW)');
xlabel('Lambda');
