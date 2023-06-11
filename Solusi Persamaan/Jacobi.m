clc
% Matrix Equation
A = [10, -1, 0, 9;
    -1, 10, -2, 7;
    0, -2, 10, 6];
n = length(A)-1;
for i=1:n
  b(i) = A(i,length(A));
  X0(i) = 0;
endfor
# iterasi
N = 1000;
# batas toleransi
toleransi = 1e-6;

disp("\n\tMatrix equation\n")
disp(A)

fprintf("\n\titerasi\t ")
for j=1:n
  fprintf("x%d\t\t ", j)
endfor
fprintf("\n")

k = 1;
while k <= N
  for i=1:n
    zn = 0;
    for j=1:n
      if j != i
        zn = zn + (A(i,j) * X0(j));
      endif
    endfor
    x(i) = (1/A(i,i))*(-zn+ b(i));
  endfor
  fprintf("\t%d\t ", k)
  for i=1:n
    fprintf("%f\t ", x(i))
  endfor
  fprintf("\n")
  if norm(x-X0) < toleransi
    return
  endif
  k = k+1;
  for i=1:n
    X0(i) = x(i);
  endfor
endwhile
