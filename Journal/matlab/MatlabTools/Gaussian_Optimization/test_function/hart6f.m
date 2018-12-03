function y = hart6f(x)
% z
% Hartmann function 
% Matlab Code by A. Hedar (Sep. 29, 2005).
% The number of variables n = 6.
% 

a(1,1)=10.0;	a(1,2)=3.0;		a(1,3)=17.0;	a(1,4)=3.5;		a(1,5)=1.7;		a(1,6)=8.0;
a(2,1)=0.05;	a(2,2)=10.0;	a(2,3)=17.0;	a(2,4)=0.1;		a(2,5)=8.0;		a(2,6)=14.0;
a(3,1)=3.0;		a(3,2)=3.5;		a(3,3)=1.7;		a(3,4)=10.0;	a(3,5)=17.0;	a(3,6)=8.0;
a(4,1)=17.0;	a(4,2)=8.0;		a(4,3)=0.05;	a(4,4)=10.0;	a(4,5)=0.1;		a(4,6)=14.0;
c(1)=1.0;c(2)=1.2;c(3)=3.0;c(4)=3.2;
p(1,1)=0.1312;	p(1,2)=0.1696;	p(1,3)=0.5569;	p(1,4)=0.0124;	p(1,5)=0.8283;	p(1,6)=0.5886;
p(2,1)=0.2329;	p(2,2)=0.4135;	p(2,3)=0.8307;	p(2,4)=0.3736;	p(2,5)=0.1004;	p(2,6)=0.9991;
p(3,1)=0.2348;	p(3,2)=0.1451;	p(3,3)=0.3522;	p(3,4)=0.2883;	p(3,5)=0.3047;	p(3,6)=0.6650;
p(4,1)=0.4047;	p(4,2)=0.8828;	p(4,3)=0.8732;	p(4,4)=0.5743;	p(4,5)=0.1091;	p(4,6)=0.0381;
s = 0;
for i=1:4;
   sm=0;
   for j=1:6;
      sm=sm+a(i,j)*(x(j)-p(i,j))^2;
   end
   s=s+c(i)*exp(-sm);
end
y = -s;