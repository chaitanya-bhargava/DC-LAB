clc;
clear all;
close all;
snr_dB=-8:1:12;
N=10^5;
x=randsrc(1,N,[0,1]);
s=1-2*x;
snr=10.^(snr_dB/10);
n=randn(1,N);
for i=1:length(snr)
    y=(sqrt(snr(i))*s)+n;
    noisy_bits=y.*s;
    indices_corrupted=find((noisy_bits)<0);
    nErr(i) =length(find(indices_corrupted));
end
simBer = nErr/N
theo=0.5*erfc(sqrt(snr/2));
semilogy(snr_dB,simBer,'b-','LineWidth',1);
hold on;
semilogy(snr_dB,theo,'r*','LineWidth',1);
xlabel('snr_dB');
ylabel('Bit Error Rate');
legend({'Practical','Theoretical'});
