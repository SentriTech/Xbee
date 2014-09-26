clear;close;clc;
data = load('data_normal.txt');
dataLen = length(data);

for i = 2:dataLen
if (data(i) > 110)% Avoid 0 value in data sequence
data(i) = data(i-1);
end
end
data = -data;
%data = data';
plot((1:dataLen)/10,data,'x-r')
axis([0,(dataLen/10),-100,-30])
xlabel('Time/(s)')
ylabel('RSS Changing(dBmW)')
title('Normal Speed')