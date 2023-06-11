clc

f = @(x) x.*log(x); % fungsi yang ingin dicari hampiran integralnya
a = input("Batas Bawah: ");
b = input("Batas Atas: ");
n = input("Nilai n: ");

h = (b-a)/n;
XI = 0;
for i=1:n+1
  if i==1
    x(i) = a;
  elseif i== n+1
    x(i) = b;
  else
    x(i) = a + (i-1)*h;
  endif
endfor

for i=1:length(x)
  if i == length(x)
    break
  endif
  XI = XI + (h*((f(x(i))+f(x(i+1)))/2));
endfor
fprintf("Nilai Eksak = %f\n", integral(f, a, b))
fprintf("Nilai Hampiran = %f\n", XI)
