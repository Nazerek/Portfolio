function f = model_dynamics(x,u)

f(1) = x(4)*cos(x(5));
f(2) = x(4)*sin(x(5));
f(3) = u(1);
f(4) = u(2);
f(5) = x(4)/4 *tan(x(3));

end