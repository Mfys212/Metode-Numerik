clc
% Menulis fungsi (ubah sesuai kebutuhan)
f = @(x) 3*(x + 1)*(x - 1/2)*(x - 1);

a = input("Masukkan interval a: "); % input interval a
b = input("Masukkan interval b: "); % input interval b
tol = input("Masukkan batas toleransi: "); % input batas toleransi
iterasi = input("Masukan iterasi: "); % input iterasi

if (f(a)<0 && f(b)<0) || (f(a)>0 && f(b)>0) % jika f(a) dan f(b) sama-sama positif atau negatif
  fprintf("Bukan termasuk bisection\n") % maka akan muncul keterangan bukan bisectional
else % jika f(a) dan f(b) bukan sama-sama positif dan negatif
  fprintf('n\t | a\t\t | b\t\t | p\t\t | f(p)\n')
  i = 1; % nilai iterasi
  while i <= iterasi
    c = (a+b)/2; % set c adalah nilai tengah kedua interval
    fprintf('%d\t | %f\t | %f\t | %f\t | %f\n', i, a, b, c, f(c));
    % jika f(c) sama dengan 0 atau error absolut kurang dari batas toleransi
    if f(c) == 0 || abs(f(c)) < tol
      fprintf("Akar persamaannya adalah: %f", c) % c adalah akar persamaannya
      return % program akan dihentikan
    % jika f(a) dikali f(c) kurang dari 0
    elseif f(a)*f(c) < 0
      b = c; % interval b adalah c
    % jika f(b) dikali f(c) kurang dari 0
    elseif f(b)*f(c) < 0
      a = c; % interval a adalah c
    endif
    i+=1;
  end
end
