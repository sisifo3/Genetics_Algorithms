function z = ackleyfcn(xx)
format long g

% Ackley's function
% Search domain: [-15,30]
% Global minimum: f(x) = 0 | x = (0,...,0)
%disp(xx)

a = 20;
b = .2;
d = 2;
c = 2*pi;

xx = max(-32,min(32,xx));

z = a + exp(1) - a*exp(-b*sqrt(1/d*sum(xx.^2,2))) - exp(1/d*sum(cos(c*xx),2));
%z = a + exp(1)- a*exp(-b*sqrt( (1/d)* ((xx.^2) + (xx.^2)))) - exp((1/d) * (cos(c*xx) + cos(c - xx)) );

hold on


end