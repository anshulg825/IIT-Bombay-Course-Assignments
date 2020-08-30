a=10.0;
b=0;
syms T(x);
ode = diff(((a+b*T)*diff(T,x)),x) == 0 ;
boundary_1 = T(-1) == -25.0;
boundary_2 = T(1) == 25.0;
boundaries = [boundary_1 boundary_2];
ySol(x) = dsolve(ode,boundaries)
x = [-1:0.0001:1];

plot(x,ySol(x))
title('Temperature Distribution')
xlabel('x in cm')
ylabel('T in Celsius')