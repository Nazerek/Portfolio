function [x] = RK4(x,u,t,func)


k1 = t * func(x,u);
k2 = t * func(x+k1*t/2, u);
k3 = t * func(x+k2*t/2, u);
k4 = t * func(x+k3*t, u);
    
x = x + k1/6 + k2/3 + k3/3 + k4/6;

end