clc
clearvars
close all
earth = [80.08;87.45;59.46;67.1];
lunar = [13.35;13.99;9.85;11.2];
martian = [30.43;33.23;22.55;25.2];
micro = [0;0;0;0];

mEarth = mean(earth);
mlunar = mean(lunar);
mMartian = mean(martian);
mMicro = mean(micro);

sEarth = std(earth);
sLunar = std(lunar);
sMartian = std(martian);
sMicro = std(micro);

names=['Earth', 'Moon','Mars','Micro'];
data = [earth,lunar,martian,micro]

figure(1)
grid on;
boxchart(data)
xticklabels({'Earth', 'Moon' , 'Mars','Micro'})
title('calf work on different gravities')
xlabel('different surfaces in space')
ylabel('Work done (J)')