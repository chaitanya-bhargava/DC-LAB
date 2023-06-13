clc;
clear all;
close all;
G=[1 1 0 0 1 0 1;
    0 1 1 1 1 0 0;
    1 1 1 0 0 1 1];
G(3,:)=mod(G(3,:)+G(1,:),2);
G(2,:)=mod(G(2,:)+G(3,:),2);
G(1,:)=mod(G(1,:)+G(2,:),2)

[k,n]=size(G);
N=2.^k;
RC=k/n;
information_bits=dec2bin(0:N-1);
code_words=mod(information_bits*G,2);
disp('Complete code set C:');
disp(code_words);
