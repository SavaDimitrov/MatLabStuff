function res = func4( x,y )
%FUN1 Summary of this function goes here
%   Detailed explanation goes here
res=y*cos(x);
end

%{
First task:
[x,y] = ode45(@func1,[0,10],3);
plot(x,y)
hold on
sol = dsolve('Dy = y*cos(t), y(0) = 3')
yy = subs(sol, 't',x);
plot(x,yy,'r')
%}