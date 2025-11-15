clc;
clear all;
close all;
Ps = (2.3e6);%Rated Generator output power (MW)
p_row = 1.225;%Air Density (kg/m3)
rgb = 94.5;%Gear Ratio 

%To calculate optical tsr
n_mr = 16;%Rated RPM of Turbine
r_t = 46.5;%Turbine Radius (M)
v_wr = 12;%Rated Wind Speed 
optical_tsr_value = (n_mr*(2*pi/60)*r_t)/v_wr;%Optical TSR Value

%Power Constants
C1 = 0.7029;
C2 = 116.055;
C3 = 0.4;
C4 = 0;
C5 = 8.6614;
C6 = 21.5;
C7 = 0.00684;

%Turbine Mechanical Speed
n_MR = 1512;%Rated RPM of Generator
WMR = (n_mr*(2*pi/60));%Rated Turbine Speed

%Sqirrel Cage Induction Generator Parameters
SR = 2.59e6; %Rated Apparent Power (VA)
VsLL = 690;%Line-Line rms Voltage (V)
Fs = 50;%Frequency (Hz)
Rr = 1.497e-3;%Rotor Winding Resistance
Llr = 0.06492e-3;%Stator Leakage Inductance
Lm = 2.13461e-3;%Magnetizing Inductance
P = 2;%Number of Pole Pairs
Rs = 1.102e-3;%Stator Winding Resistance
J = 1200;%Moment of Inertia
Pm = 2.3339e6;%Rated Mechanical Input Power (W)
nmInit = 1450;%Initial Rotor Speed (rpm)
Lls = 0.06492e-3;%Stator Leakage Inductance 
nsyn = 120*Fs/(2*P);%Synchronous Speed (rpm)
slip = (nsyn-nmInit)/nsyn;%Slip

%Grid Parameters
VgLL = 690;%Grid RMS Voltage (V)
Fg = 50; %Frequency (Hz)
