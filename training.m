clc;
clear all;
close all;
[s11,fs1] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-023.wav');
[s1] = noiserelease(s11,fs1);
[p1,q1] = worddivision(s1);
[lochz11] = frequencies(s1,fs1,p1,q1);
[s22,fs2] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-024.wav');
[s2] = noiserelease(s22,fs2);
[p2,q2] = worddivision(s2);
[lochz22] = frequencies(s2,fs2,p2,q2);
[s33,fs3] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-025.wav');
[s3] = noiserelease(s33,fs3);
[p3,q3] = worddivision(s3);
[lochz33] = frequencies(s3,fs3,p3,q3);
[s44,fs4] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-026.wav');
[s4] = noiserelease(s44,fs4);
[p4,q4] = worddivision(s4);
[lochz44] = frequencies(s4,fs4,p4,q4);
[s55,fs5] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-027.wav');
[s5] = noiserelease(s55,fs5);
[p5,q5] = worddivision(s5);
[lochz55] = frequencies(s5,fs5,p5,q5);
[s66,fs6] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-023.wav');
[s6] = noiserelease(s66,fs1);
[p6,q6] = worddivision(s6);
[lochz66] = frequencies(s6,fs6,p6,q6);
[s77,fs7] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-029.wav');
[s7] = noiserelease(s77,fs7);
[p7,q7] = worddivision(s7);
[lochz77] = frequencies(s7,fs7,p7,q7);
[s88,fs8] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-025.wav');
[s8] = noiserelease(s88,fs8);
[p8,q8] = worddivision(s8);
[lochz88] = frequencies(s8,fs8,p8,q8);
[s99,fs9] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-026.wav');
[s9] = noiserelease(s99,fs9);
[p9,q9] = worddivision(s9);
[lochz99] = frequencies(s9,fs9,p9,q9);
[s1010,fs10] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-027.wav');
[s10] = noiserelease(s1010,fs1);
[p10,q10] = worddivision(s10);
[lochz1010] = frequencies(s10,fs10,p10,q10);
[s1111,fs11] = audioread('C:\Users\BABBY\Desktop\audiosamples\Record-029.wav');
[s11] = noiserelease(s1111,fs1);
[p11,q11] = worddivision(s11);
[lochz1111] = frequencies(s11,fs11,p11,q11);
lhz1 = [lochz11(1),lochz22(1),lochz33(1),lochz44(1),lochz55(1),lochz66(1),lochz77(1),lochz88(1),lochz99(1),lochz1010(1)];
lhz2 = [lochz11(2),lochz22(2),lochz33(2),lochz44(2),lochz55(2),lochz66(2),lochz77(2),lochz88(2),lochz99(2),lochz1010(2)];
lhz3 = [lochz11(3),lochz22(3),lochz33(3),lochz44(3),lochz55(3),lochz66(3),lochz77(3),lochz88(3),lochz99(3),lochz1010(3)];
%lhz4 = [lochz11(4),lochz22(4),lochz33(4),lochz44(4),lochz55(4),lochz66(4),lochz77(4),lochz88(4),lochz99(4),lochz1010(4)];
l1 = length(lhz1);l2 = length(lhz2);l3 = length(lhz3);%l4 = length(lhz4);
avg1 = mean(lhz1);avg2 = mean(lhz2);avg3 = mean(lhz3);%avg4 = mean(lhz4);
r11 = max(lhz1);r12 = min(lhz1);r1 = [r11,r12];
r21 = max(lhz2);r22 = min(lhz2);r2 = [r21,r22];
r31 = max(lhz3);r32 = min(lhz3);r3 = [r31,r32];
%r41 = max(lhz4);r42 = min(lhz4);r4 = [r41,r42];
l = length(lochz1111);
for i = 1:l  
    if lochz1111(i) <= r1(1) && lochz1111(i) >= r1(2)
        disp('Food');
    elseif lochz1111(i) <= r2(1) && lochz1111(i) >= r2(2)
        disp('Bird');
    elseif lochz1111(i) <= r3(1)+70 && lochz1111(i) >= r3(2)+70
        disp('Cat');
  %  elseif lochz1111(i)-500 <= r4(1) && lochz1111(i) >= r4(2)
   %     disp('Fly');
    else
        disp('Nan');
    end
end



for i = 1:l  
    if lochz1111(i) <= avg1+120 && lochz1111(i) >= avg1-120
        disp('Food');
    end    
    if lochz1111(i) <= avg2+100 && lochz1111(i) >= avg2-100
        disp('Bird');
    end
    if lochz1111(i) <= avg3+100 && lochz1111(i) >= avg3-100
        disp('Cat');
    end
       
end

