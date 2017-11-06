function res = func5( x,y )
%FUNC5 Summary of this function goes here
%   Detailed explanation goes here
res = cos(x*y);
end

%{
plot([-6,6],[0,0],'k')
hold on
plot([0,0],[-6,6], 'k')
axis([-6,6,-6,6])
[x0,y0]=ginput(1);
while x0 >=-6 && x0 <=6 && y0 >=-6 && y0 <=6
[x,y] = ode45(@func5,[x0,6], y0);
plot(x,y)
[x,y] = ode45(@func5,[x0,-6], y0);
plot(x,y)
[x0,y0] = ginput(1);
end
%integral curves
%}