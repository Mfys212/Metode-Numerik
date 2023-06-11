clc
# fungsi
f = @(x) x*exp(x);
# h
h = 0.2;
# x
x = 2.0;
# orde
orde = 30;

for i=1:orde/2
  D(1, i) = (f(x+(h/2^(i-1)))-f(x-(h/2^(i-1))))/(2*(h/2^(i-1)));
endfor
for i=2:(orde/2)
  for j=i:(orde/2)
    D(i, j) = D(i-1, j) + ((D(i-1, j) - D(i-1, j-1))/(4^i-1));
  endfor
endfor

for k=1:orde/2
  fprintf("O(h^%d) : ", 2*k)
  for l=1:orde/2
    fprintf("%f  ", D(k, l))
  endfor
  fprintf("\n")
endfor
