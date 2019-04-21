function [lochz11] = frequencies(s11,fs,p1,q1)
h = length(p1);
figure;
subplot(h+1,1,1);plot(s11);
for j = 1:h
    xm = s11(p1(j):q1(j));
    N=length(xm);
    z = [0:N-1];
    [m,loc] = max(abs(fft(xm)));
    lochz11(j) = loc*fs/N;
    subplot(h+1,1,j+1);
    plot(z,abs(fft(xm)));
    
end