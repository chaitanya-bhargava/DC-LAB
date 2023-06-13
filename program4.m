clc;
clear all;
close all;
r=rand(1,1000000);
M=mean(r)
V=var(r)
x=-20:0.01:20;
pdf=exp(-((x-M).^2)/2*V)/sqrt(2*pi*V);
cdf=1/2*(1+erf((x-M)/sqrt(2*V)));
plot(x,pdf,'r','LineWidth',2);
hold on;
plot(x,cdf,'b','LineWidth',2);
legend({'PDF','CDF'},'Location','northwest');
xlabel('Observation');
ylabel('Normal Probability Density');
hold off;
