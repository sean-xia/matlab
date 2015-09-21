% This program is to implement the inverse laplace transform from the paper:"Numerical Inversion of Laplace Transform of
% Probability Distribution" (by Joseph Abate, 1995)
% Author:  Hongxing Xia
% Date:    2015-09-18

function E_mnt = JB_invlaplace(t)
n = 30;
m = 15;
A = 18.4;
E_mnt = 0;
%syms nn k;

term1_of_sn = exp(A/2)/(2*t) * real(myfun(A/(2*t)));   % calculation of the first term of (13)
for i = 0:m
    term2_of_sn = 0;
       for  k = 1:(n+i)
              ev_point = (A+2*k*pi*1i)/(2*t);
              term2_of_sn = term2_of_sn + (-1)^k * real(myfun(ev_point));  % calculation of second term of (13)
       end
    term2_of_sn = exp(A/2)/t * term2_of_sn;
    s_n = term1_of_sn + term2_of_sn;
   % f4sum2 = nchoose(m,i)*2^(-m)*s_n(n+i);
    E_mnt = E_mnt + nchoosek(m,i)*2^(-m)*s_n;
end




