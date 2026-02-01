function [Mean,Std,Range,t1,t2,t3] = readFunc(time,voltage,length,I1,I2,I3,I4,I5,I6)

actV1 = [0];
actT1 = [0];
actV2 = [0];
actT2 = [0];
actV3 = [0];
actT3 = [0];

m = 1;
k = 1;
n = 1;

for i = 1:length
    if(voltage(i) > 0.074)
        if(time(i) > I1 && time(i) < I2)
            actV1(m) = voltage(i);
            actT1(i) = time(i);
            m = m + 1;
        end
    end
end

for i = 1:length
    if(voltage(i) > 0.074)
        if(time(i) > I3 && time(i) < I4)
            actV2(k) = voltage(i);
            actT2(i) = time(i);
            k = k + 1;
        end
    end
end

for i = 1:length
    if(voltage(i) > 0.074)
        if(time(i) > I5 && time(i) < I6)
            actV3(n) = voltage(i);
            actT3(i) = time(i);
            n = n + 1;
        end
    end
end

M = zeros(1,3);
sd = zeros(1,3);
R = zeros(1,6);

M(1) = mean(actV1);
M(2) = mean(actV2);
M(3) = mean(actV3);
sd(1) = std(actV1);
sd(2) = std(actV2);
sd(3) = std(actV3);

R(1) = min(actV1);
R(2) = max(actV1);
R(3) = min(actV2);
R(4) = max(actV2);
R(5) = min(actV3);
R(6) = max(actV3);

Mean = mean(M);
Std = std(sd);
Range = zeros(1,2);
Range(1) = min(R);
Range(2) = max(R);

t1 = zeros(1,2);
t1(1) = min(actT1);
t1(2) = max(actT1);
t2 = zeros(1,2);
t2(1) = min(actT2);
t2(2) = max(actT2);
t3 = zeros(1,2);
t3(1) = min(actT3);
t3(2) = max(actT3);

end