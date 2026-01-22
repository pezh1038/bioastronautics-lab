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

actV = [0];
actT = [0];

for i = 1:lenth
    if(voltage1(i) > 0.12)
        actV(i) = voltage1(i);
        actT(i) = time1(i);
    end
end

   

plot(time1,voltage1);


RAHHHHH

