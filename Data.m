clc, close all, clear;


StandF = readtable("ASEN_2501_Muscle_sensor_RegularImpulsiveCalfRaise_Group13.txt");
StandS = readtable("ASEN_2501_Muscle_sensor_RegularSlowCalfRaise_Group13.txt");
Spring1F = readtable("ASEN_2501_Muscle_sensor_1SpringImpulsiveCalfRaise_Group13.txt");
Spring1S = readtable("ASEN_2501_Muscle_sensor_1SpringSlowCalfRaise_Group13.txt");
Spring3F = readtable("ASEN_2501_Muscle_sensor_3SpringImpulsiveCalfRaise_Group13.txt");
Spring3S = readtable("ASEN_2501_Muscle_sensor_3SpringSlowCalfRaise_Group13.txt");

timeSF = StandF.Time_s_;
voltageSF = StandF.Voltage_V_;

LSF = length(voltageSF);

timeSS = StandS.Time_s_;
voltageSS = StandS.Voltage_V_;

LSS = length(voltageSS);

time1SF = Spring1F.Time_s_;
voltage1SF = Spring1F.Voltage_V_;

L1SF = length(voltage1SF);

time1SS = Spring1S.Time_s_;
voltage1SS = Spring1S.Voltage_V_;

L1SS = length(voltage1SS);

time3SF = Spring3F.Time_s_;
voltage3SF = Spring3F.Voltage_V_;

L3SF = length(voltage3SF);

time3SS = Spring3S.Time_s_;
voltage3SS = Spring3S.Voltage_V_;

L3SS = length(voltage3SS);


[MSF, SSF, RSF,t1SF,t2SF,t3SF] = readFunc(timeSF,voltageSF,LSF,0,1.2,1.6,2.8,6.2,7.4);

[MSS, SSS, RSS,t1SS,t2SS,t3SS] = readFunc(timeSS,voltageSS,LSS,2.82,5.21,5.78,8.82,9.05,11.75);

[M1SF, S1SF, R1SF,t11SF,t21SF,t31SF] = readFunc(time1SF,voltage1SF,L1SF,0.29,1.66,1.66,3.40,5.27,6.86);

[M1SS, S1SS, R1SS,t11SS,t21SS,t31SS] = readFunc(time1SS,voltage1SS,L1SS,5.17,7.8,7.8,10.3,10.3,12.8);

[M3SF, S3SF, R3SF,t13SF,t23SF,t33SF] = readFunc(time3SF,voltage3SF,L3SF,0,2.6,2.6,5.0,7.47,10);

[M3SS, S3SS, R3SS,t13SS,t23SS,t33SS] = readFunc(time3SS,voltage3SS,L3SS,0,3.27,3.27,7.17,7.17,11.63);


idx = [5,5];

figure;
plot(timeSF,voltageSF);
hold on;
errorbar(5,MSF,SSF,"og");
plot(idx,RSF,"*r");
title("Standing impulsive Calf raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");

figure;
plot(timeSS,voltageSS);
hold on;
errorbar(5,MSS,SSS,"og");
plot(idx,RSS,"*r");
title("Standing slow Calf raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");

figure;
plot(time1SF,voltage1SF);
hold on;
errorbar(5,M1SF,S1SF,"og");
plot(idx,R1SF,"*r");
title("Seated 1 Spring Impulsive Calf Raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");

figure;
plot(time1SS,voltage1SS);
hold on;
errorbar(5,M1SS,S1SS,"og");
plot(idx,R1SS,"*r");
title("Seated 1 Spring Slow Calf Raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");

figure;
plot(time3SF,voltage3SF);
hold on;
errorbar(5,M3SF,S3SF,"og");
plot(idx,R3SF,"*r");
title("Seated 3 Spring Impulsive Calf Raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");

figure;
plot(time3SS,voltage3SS);
hold on;
errorbar(5,M3SS,S3SS,"og");
plot(idx,R3SS,"*r");
title("Seated 3 Spring Slow Calf Raise");
ylabel("EMG signal (V)");
xlabel("Time (s)");
legend("EMG Signal", "Mean signal +- standard deviation","range of signal");
