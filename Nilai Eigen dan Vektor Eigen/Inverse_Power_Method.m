clc
% matriks
A = [2 1 1;
     1 2 1;
     1 1 2];
n = length(A);
# matriks I
for i=1:n
  for j=1:n
    if i==j
      I(i,j) = 1;
    elseif
      I(i,j) = 0;
    endif
  endfor
endfor
# vektor
x = [1; -1; 2];
# iterasi
N = 100;
# batas toleransi
toleransi = 1e-6;
q = (x'*A*x)/(x'*x);
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
  y = (A - q*I) \ x;
  if rcond(A - q*I) < eps
    disp('q is an eigenvalue');
    disp(q);
    return;
  endif
  u = y(p);
  for p=1:n
    if 1 <= p && p <= n && abs(y(p)) == norm(y, inf)
      break
    endif
  endfor
  error = norm(x-(y/y(p)), inf);
  x = y/y(p);
  fprintf("\t%d\t\t", k)
  fprintf("(%f, %f, %f)\t\t", x(1), x(2), x(3))
  mu = (1/u)+q;
  fprintf("%f", mu)
  if error < toleransi
    return
  endif
  fprintf("\n")
  k = k + 1;
endwhile
