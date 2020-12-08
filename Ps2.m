%The suspension system for one wheel of an old-fashioned pickup truck

M1 = 2500;
M2 = 320;
K1 = 80000;
K2 = 500000;
b1 = 350;
%b2 = 15020;

s = tf('s');
G1 = ((M1+M2)*s^2+b1*s+K2)/((M1*s^2+b1*s+K1)*(M2*s^2+b1*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));
G2 = (-M1*b1*s^3-M1*K2*s^2)/((M1*s^2+b1*s+K1)*(M2*s^2+b1*s+(K1+K2))-(b1*s+K1)*(b1*s+K1));

sys = feedback(ss(G1),1);
step(sys)
