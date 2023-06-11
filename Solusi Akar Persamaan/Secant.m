clc
% menulis fungsi (ubah sesuai kebutuhan)
f = @(x) x^3 + 3*x^2 - 1;

p0 = input("Enter a value for p0: ");
p1 = input("Enter a value for p1: ");
toleransi = input("Enter a value for tol : ");
iterasi = input("Enter a value for iteration : ");
q0 = f(p0);
q1 = f(p1);

i = 1;
while i <= iterasi
    p = p1 - q1 * (p1 - p0) / (q1 - q0);
    fprintf("%d. p0 = %f, p1 = %f, q0 = %f, q1 = %f, p = %f, |p-p1| = %f\n", i, p0, p1, q0, q1, p, abs(p-p1))
    if abs(p - p1) < toleransi
      break;
    endif
    p0 = p1;
    q0 = q1;
    p1 = p;
    q1 = f(p);
    i = i + 1;
endwhile
fprintf("Akar = %f\n", p)
