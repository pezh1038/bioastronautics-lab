clc, close all, clear;

data1 = readtable("Muslce_LA_Data_1-g_Calf_Raise_Fast.txt");
data2 = readtable("Muslce_LA_Data_1-g_Calf_Raise_Slow.txt");
data1SpringF = readtable("Muslce_LA_Data_1spring_Calf_Raise_Fast.txt");
data1SpringS = readtable("Muslce_LA_Data_1spring_Calf_Raise_Slow.txt");
data2SpringF = readtable("Muslce_LA_Data_2spring_Calf_Raise_Fast.txt");
data2SpringS = readtable("Muslce_LA_Data_2spring_Calf_Raise_Slow.txt");
data3SpringF = readtable("Muslce_LA_Data_3spring_Calf_Raise_Fast.txt");
data3SpringS = readtable("Muslce_LA_Data_3spring_Calf_Raise_Slow.txt");

time1 = data1.Time_s_;
voltage1 = data1.Voltage_V_;

lenth = length(voltage1);


actNum = 1;
actV1 = [0];
actT1 = [0];
actV2 = [0];
actT2 = [0];
actV3 = [0];
actT3 = [0];

for i = 1:lenth
    if(voltage1(i) > 0.12)
        if(time1(i) > 1 && time1(i) < 3)
            actV1(i) = voltage1(i);
            actT1(i) = time1(i);
        elseif(time1(i) > 3 && time1(i) < 5)
            actV2(i) = voltage1(i);
            actT2(i) = time1(i);
        elseif(time1(i) > 5 && time1(i) < 8)
            actV3(i) = voltage1(i);
            actT3(i) = time1(i);
        end
    end
end

M1 = mean(actV1);
M2 = mean(actV2);
M3 = mean(actV3);
SD1 = std(actV1);
SD2 = std(actV2);
SD3 = std(actV3);

R1 = range(actV1);
R2 = range(actV2);
R3 = range(actV3);
   

plot(time1,voltage1);
