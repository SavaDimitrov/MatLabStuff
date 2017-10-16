function res = func1(x)
res = x.^3 -x;

%{
1st problem:
x = 0:0.1:7;
for k = 1:30
xx = x + k;
yy = sin(xx);
plot(xx,yy)
axis([7,31,-2,2])
M(k) = getframe;
end
movie(M,100000, 1)

2nd problem:
dsolve('Dy = y, y(0) = 3')

3rd problem:
a = dsolve('Dy = y, y(0) = 3');
subs(a, 't', [1,2,8])

4th problem:
sol = dsolve('Dy = y*cos(t), y(0) = A');
x = -5:0.1:5;
for k = -8:8
sol1 = subs(sol, 'A', k);
y = subs(sol1, 't', x);
plot(x,y)
hold on;
end
axis([-5,5,-5,5])

5th problem:
plot([-10,10], [0,0], 'k')
hold on
plot([0,0], [-5,5], 'k')
axis([-10,10,-5,5])
x = -10:0.1:10;
[x0, y0] = ginput(1);
sol1 = subs(sol, 'a', x0);
sol2 = subs(sol1, 'b', y0);
y = subs(sol2, 't', x);
plot(x,y)

6th problem:
plot([-10,10], [0,0], 'k')
hold on
plot([0,0], [-5,5], 'k')
axis([-10,10,-5,5])
x = -10:0.1:10;
[x0, y0] = ginput(1);
while x0 >= -10 && x0 <= 10 && y0 >= -5 && y0 <= 5
sol1 = subs(sol, 'a', x0);
sol2 = subs(sol1, 'b', y0);
y = subs(sol2, 't', x);
plot(x,y)
[x0,y0] = ginput(1);
end

7th problem:
[x,y] = meshgrid([-6:6],[-5:5]);
u = ones(size(x));
v = y.*sin(x);
r = sqrt (u.^2 + v.^2);
quiver(x,y,u./r,v./r)
%}