function res = func6( x,y )
%FUNC6 Summary of this function goes here
%   Detailed explanation goes here
res = (sin(y))*(e^(x^2));
end

%{
h = 0.01;
x = 0:h:4;
y(1) = 1;
for n = 1:length(x)-1
y(n+1) = y(n) + exp(x(n)^2)*sin(y(n))*h;
end
plot(x,y)
axis([0,4,-1,4])
%}