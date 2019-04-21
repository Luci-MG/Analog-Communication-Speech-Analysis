function [sample] = noiserelease(input,fs1)
    figure;
y1 = input;
fs = fs1;
X1 = y1 + 2*randn(length(y1),1);
time=(1/fs)*length(y1);
t=linspace(0,time,length(y1));
subplot(7,1,1)
plot(t,y1); title('Time domain plot of Orignal signal');
subplot(7,1,2)
time1=(1/fs)*length(X1);
t1=linspace(0,time1,length(X1));
plot(t1,X1); title('Time domain plot of Noise Added Siganl i.e X1.');
subplot(7,1,3)
N=length(y1);
Fc=(-N/2:N/2-1)/N;
F=fs*Fc;
wa=fft(y1);
wa=fftshift(wa);
plot(F,wa); title('Frequency plot of Orignal Signal');
subplot(7,1,4)
N1=length(X1);
Fa=(-N1/2:N1/2-1)/N1;
F1=Fa*fs;
wq=fft(X1);
wq=fftshift(wq);
plot(F1,wq) ;title('Frequency plot of X1.');
%NOICE REMOVAL CODE
subplot(7,1,5)
%W=fft(X1);
i=1;
%Averging for reducing intensity of high frequencies
for j=2:length(X1)-1
y1(j,i) = (y1(j-1,i) + y1(j,i) + y1(j+1,i))/3 ;
end
g = gausswin(20); %Creataing Gaussian window of 20
g = g/sum(g);
y= conv(y1(:,1), g, 'same'); %Applying Conv to remove effect of randn psudo no. added(noise)
result=sgolayfilt(y,1,17); 
plot(result);
sample = result;
end