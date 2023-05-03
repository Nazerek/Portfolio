% This demo code simulates a motion of an object described by system dynamics
% model_dynamics.m. Numerical integration is calculated using 4th order
% Runge-Kutta method RK4.m

x0=[0,0,0,0,0]; %x-position,y-position,steering angle, velocity, yaw angle
model = @(x,u) model_dynamics(x,u);
x=x0;
u=[1,1];

xs=[];
for i=1:10
    x = RK4(x,u,1e-1,model);
    xs=[xs;x];
end


scatter(xs(:,1),xs(:,2),"black","filled");
title('Trajectory of an object in the Cartesian coordinate system')
xlabel('x') 
ylabel('y') 

