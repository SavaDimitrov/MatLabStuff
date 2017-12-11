function res = func7( t,x )
%FUNC1 Summary of this function goes here
%   Detailed explanation goes here

res = [x(1) + 2*x(2); 2*x(1) + x(2)];

end

%{
%Фазова крива:
[t,x] = ode45(@func7,[0,4],[1,0]);
plot(x(:,1),x(:,2))
hold on
[b,x] = ode45(@func7,[0,-3],[1,0]);
plot(x(:,1),x(:,2),'r');
axis([-8,8,-8,8])
%

%Фазови криви:
a = [1,-1,1,-1,1,0,0,-1];
b = [1,-1,-1,1,0,1,-1,0];
hold on
for k = 1:length(a)
[t,x] = ode45(@func7,[0,4],[a(k),b(k)]);
plot(x(:,1),x(:,2), 'b')
[b,x] = ode45(@func7,[0,-3],[a(k),b(k)]);
plot(x(:,1),x(:,2),'r');
axis([-5,5,-5,5])
end
%

%Фазови криви(чрез кликания):
plot([-6,6],[0,0],'k')
hold on
plot([0,0],[-6,6],'k')
axis([-6,6,-6,6])
while true
[a,b] = ginput(1);
[t,x] = ode45(@func7,[0,3],[a,b]);
plot(x(:,1),x(:,2), 'b')
[t,x] = ode45(@func7,[0,-3],[a,b]);
plot(x(:,1),x(:,2),'r')
end
%



%}