clc

x = [-0.1 0.0 0.2 0.3];

F(1,1) = 5.3;
F(2,1) = 2;
F(3,1) = 3.19;
F(4,1) = 1;

n = length(x);
for i=1:n
  fprintf("\tx%d= ", i-1)
  disp(x(i))
endfor
fprintf("\n")
for i=2:n
  for j=2:i
    if i==2
      F(i,j) = (F(i,j-1) - F(i-1,j-1))/(x(i) - x(i-j+1))
    elseif
      F(i,j) = (F(i,j-1) - F(i-1,j-1))/(x(i) - x(i-j+1));
    endif
  endfor
endfor
#fprintf("x\t f(x)\t ST-1\t ST-2\t ST-3\t\n")
for i=1:n
  fprintf("\ta%d= ", i-1)
  disp(F(i,i))
endfor

disp("\n\tP3(x) = a0 + a1(x-x0) + a2(x-x0)(x-x1) + a3(x-x0)(x-x1)(x-x2)")
disp("\tP3(x) = 5.3 + (-33)(x-(-0.1)) + 129.83(x-(-0.1))(x-0.0) + (-556.67)(x-(-0.1))(x-0)(x-0.2)")
disp("\tP3(x) = 5.3 - 33(x+0.1) + 129.83(x+0.1)(x) - 556.67(x+0.1)(x)(x-0.2)")

#note: kalo output tabel hanya 2 kolom run kembali (run 2x)
