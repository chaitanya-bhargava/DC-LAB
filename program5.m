clc;
clear all;
close all;
pd1=makedist('Normal','mu',0,'sigma',sqrt(1/8));
x=-3:0.01:3;
pdf1=pdf(pd1,x);
partition = [-1:.2:1]; 
codebook = [-1.2:.2:1]; 
[index,quants] = quantiz(pdf1,partition,codebook);
subplot(2,1,1);
plot(x,pdf1,'r','LineWidth',2)
hold on;
plot(x,quants,'b','LineWidth',2);
legend('Original signal','Quantized signal');
error=abs(quants-pdf1);
totalerror=trapz(error)
subplot(2,1,2);
plot(x,error,'k','LineWidth',2);