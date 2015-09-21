clc;
clear all;
x = 0.000001:0.2:8;
h = [];
g = [];
k = [];
p = 1;
lambda = 1;
cd = pi;
a = p*lambda*cd;
 
c1 = lambda*pi;   % mean of the Gaussian distribution
c2 = (2/3)*lambda*pi;  % variance of the Gaussian distribution


for i = 1:length(x)
    h = [h JB_invlaplace(x(i))];
    g = [g erfc(pi*a/4/sqrt(x(i)))];
    k = [k 1/2*erfc((x(i)-c1)/(sqrt(2*c2)))];  %高斯近似的结果比较。
end
plot(x,max(1-h,1e-3),'r*');
hold on;
plot(x,1-g);
plot(x,k);
goodplot;




        