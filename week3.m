%Fist task:
% [x,y] = meshgrid([-3:5],[-1:0.5:5]);
%  u = ones(size(x));
%  v = y - y.^2/4;
%  r = sqrt(u.^2 + v.^2);
%  quiver(x,y,u./r,v./r, 'g');
%  axis([-3.5, 5.5, -1.5, 5.5]);
%  hold on
%  sol = dsolve('Dy = y - y^2/4, y(a) = b');
%  xx = -3.5:0.1:5.5;
%  [x0,y0] = ginput(1);
%  while true
%  sol1 = subs(sol, 'a', x0);
%  sol2 = subs(sol1, 'b', y0);
%  yy = subs(sol2, 't', xx);
%  plot(xx,yy);
%  [x0,y0] = ginput(1);
%  end

% %Second task
% h = 0.01;
% x = 0:h:100;
% N = length(x);
% y(1) = 4;
% for k = 1:N-1
% y(k+1) = y(k) + y(k)*cos(x(k))*h;
% end
% plot(x,y)
% hold on
% sol = dsolve('Dy = y*cos(t), y(0) = 4');
% yy = subs(sol, 't', x);
% plot(x, yy, 'r')

%3rd task:
