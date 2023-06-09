clc;
close all;
clear all;
pd1=makedist('Uniform');
pd2=makedist('Uniform','lower',-2,'upper',2);
pd3=makedist('Uniform','lower',-2,'upper',1);
x=-3:0.01:3;
pdf1=pdf(pd1,x);
pdf2=pdf(pd2,x);
pdf3=pdf(pd3,x);
figure;
plot(x,pdf1,'r','LineWidth',2);
hold on;
plot(x,pdf2,'k:','LineWidth',2);
plot(x,pdf3,'b-','LineWidth',2);
legend({'a=0,b=1','a=-2,b=2','a=-2,b=1'},'Location','northwest');
xlabel('Observation');
ylabel('Probability Density');
hold off;