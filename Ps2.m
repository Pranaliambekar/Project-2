%The suspension system for one wheel of an old-fashioned pickup truck

M1 = 2500;                  % mass of Vehicle
M2 = 320;                   % mass of wheel
K1 = 80000;                 % suspension spring has a spring constant k1
K2 = 500000;                % tire spring constant k2
b1 = 350;                   % amping constant of the shock absorber

s = tf('s');                % transfer function
G1 = ((M1+M2)*s^2+b1*s+K2)/((M1*s^2+b1*s+K1)*(M2*s^2+b1*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));  % gain1
G2 = (-M1*b1*s^3-M1*K2*s^2)/((M1*s^2+b1*s+K1)*(M2*s^2+b1*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));  %gain2

sys = feedback(ss(G1),1);
step(sys)                   % plot of road
