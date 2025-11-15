%Time defined for plotting data between 0 to 4 sec
t = 0:0.000002:4;
time = t';
subplot(211);
plot(time,out.Tm/1000);
grid on; ylim([10 30]); 
xlim([2 4]); 
title("Generator Mechanical Input Torque (kNm)");
xlabel("Time(sec)"); ylabel("Torque (kNm)");
subplot(212);
plot(time,out.Iabc_IG/1000);
grid on; xlim([2 4]); ylim([-8 8]);
title("SCIG Output Current (kA)");
xlabel("Time(sec)"); ylabel("Current (kA)");
