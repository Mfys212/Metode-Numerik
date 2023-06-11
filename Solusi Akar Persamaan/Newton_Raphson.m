clc
% menulis fungsi (ubah sesuai kebutuhan)
f = @(x) x^3 + 3*x^2 - 1;
% turunan fungsi
z = @(x) 3*x^2 + 6*x;

p0 = input("Enter a value for p0: ");
toleransi = input("Enter a value for tol : ");
iterasi = input("Enter a value for iteration : ");

i = 1;
while i <= iterasi
    p = p0 - f(p0) / z(p0);
    fprintf("%d. p0 = %f, f(p0) = %f, f'(p0) = %f, p = %f, |p-p0| = %f\n", i, p0, f(p0), z(p0), p, abs(p-p0))
    if abs(p - p0) < toleransi
      break;
    endif
    p0 = p;
    i = i + 1;
end
fprintf("Akar = %f\n", p)
