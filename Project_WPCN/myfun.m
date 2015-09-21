function f=myfun(z)
% f = 1/z*exp(-sqrt(z));
 p = 1;
 lambda = 1;
 cd = pi;
 a = p*lambda*cd;
 f = exp(a*(-pi*sqrt(z)/2+sqrt(pi*z)*Faddeeva_erfc(sqrt(z))))/z;
 %f = exp(a*(-pi*sqrt(z)/2))/z;
% f = 1/z^2;
end