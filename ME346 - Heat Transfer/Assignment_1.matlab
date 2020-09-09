a=10.0;
b=0; % change the b as per your choice
syms T(x);
ode = diff(((a+b*T)*diff(T,x)),x) == 0 ;  % this is the differential equation we are trying to solve 
boundary_1 = T(-1) == -25.0;  % the two boundary condition
boundary_2 = T(1) == 25.0;
boundaries = [boundary_1 boundary_2];
y(x) = dsolve(ode,boundaries)   % dsolve function solves the ODE with the boundary condition
x = [-1:0.0001:1];  % x moves from -1 to 1 and has 0.0001 resolution

plot(x,y(x))   %plotting the curve
title('Temperature Distribution')
xlabel('x in cm')
ylabel('T in Celsius')