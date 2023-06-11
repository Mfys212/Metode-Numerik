clc

f = @(t,y) 1+(t-y)^2; %y'
a = input("input a: ");
b = input("input b: ");
h = input("input h: ");
alpha = input("input y(a): ");
N = (b-a)/h;
t = a;
w = alpha;
fprintf("\n")
for i=1:N
  K_1 = h*f(t,w);
  K_2 = h*f(t+h/2, w+K_1/2);
  K_3 = h*f(t+h/2, w+K_2/2);
  K_4 = h*f(t+h, w+K_3);
  w = w + (K_1+2*K_2+2*K_3+K_4)/6;
  t = a + i*h;
  fprintf("w%d=%f \t t%d=%f\n", i, w, i, t)
endfor
fprintf("\n")
