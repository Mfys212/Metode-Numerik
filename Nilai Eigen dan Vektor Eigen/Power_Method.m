clc
% matriks
A = [2 1 1;
     1 2 1;
     1 1 2];
n = length(A);
# vektor
x = [1; -1; 2];
# iterasi
N = 100;
# batas toleransi
toleransi = 1e-6;

k = 1;
for p=1:n
  if 1 <= p && p <= n && abs(x(p)) == norm(x, inf)
    break
  endif
endfor
x = x/x(p);
fprintf("\titerasi\t\t vektor eigen\t\t\t\t nilai eigen")
fprintf("\n")

while k <= N
  y = A*x;
  mu = y(p);
  for p=1:n
    if 1 <= p && p <= n && abs(y(p)) == norm(y, inf)
      break
    endif
  endfor
  if y(p) == 0
    disp("vektor eigen: ")
    disp(x)
    disp("A memiliki nilai eigen 0, pilih vektor baru x dan mengulang kembali")
    return
  endif
  error = norm(x-(y/y(p)), inf);
  x = y/y(p);
  fprintf("\t%d\t\t", k)
  fprintf("(%f, %f, %f)\t\t", x(1), x(2), x(3))
  fprintf("%f", mu)
  if error < toleransi
    return
  endif
  fprintf("\n")
  k = k+1;
endwhile
