clc

f = @(t,y) (1+t)/(1+y); %y'
a = input("input a: ");
b = input("input b: ");
h = input("input h: ");
alpha = input("input y(a): ");
N = (b-a)/h;
t = a;
w = alpha;
fprintf("\n")
for i=1:N
  w = w+h*f(t,w);
  t = a+i*h;
  fprintf("w%d=%f \t t%d=%f\n", i, w, i, t)
endfor
fprintf("\n")
