# Kramerova Metoda
# 2x - 4y -z = 0
# -x + 2y + 2z = 6
# 3x + 6y      = 6

A = [2,-4,-1;-1,2,2;3,6,0];
B = [0;6;6];

[m,n] = size(A); # 3x3 -> m = 3, n = 3
if m ~= n
  printf('Matrica nije kvadrartna');
elseif det(A) == 0
  printf('Matrica je singularna');
else
  for j = 1:n
    C = A;
    C(:,j) = B;
    X(j) = det(C) / det(A)
  endfor
  X = X'; # transponovano iz reda u kolonu
end
printf('Rezultat Kramerove metode je:\n');
disp(X);


# Matricna Metoda
# -2x + 3y + z = 1
# x + 3y - 2z = 1
#  x - 6y + z = 3

A = [-2,3,1;1,3,-2;1,-6,1];
B = [1;1;3];

if det(inv(A)) == 0
  printf('Inverzna matrica ne postoji.\n');
else
  X = inv(A) * B;
end
printf('Resenje je: \n');
disp(X);

#1.
# Решити једначину x^4 - 2x^2 + 1 = 0
# f(x) = 0
# fplot('x^4 - 2 * x^2 + 1',[0 8]);
# x = fzero('x^4 - 2 * x^2 + 1',0);

# 2.
# Nacrtati grafik polinoma y = 0.02x^4 - 0.75x^3 + 12.5x - 2y u opsegu -6<= x <= 6
P = [0.02 0.75 12.5 2];
x = -6:0.1:6;
y = polyval(P,x);
plot(x,y);

# 4.
# Cramer
A = [1,3,-2;2,-1,1;1,0,2];
B = [1;3;7];
[m,n] = size(A);
if m ~= n
   printf('Nije kvadratna.');
else if det(A) == 0
   printf('Nema resenja.');
else
   for j = 1:n
     C = A;
     C(:,j) = B;
     X{j) = det(C) / det(A);
   endfor
   X = X';
end
printf('Resenje:\n');
disp(X);
