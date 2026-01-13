#1. Izračunati vrednost funkcije
x = 1;
y = (sqrt(x^2 + 3*x - 1) / cos(x) - sin(x)) * exp(1)^(2*x) - log(1 + x^2);
printf('Priblizno resenje je: \n');
disp(round(y));

#2. Izracunati limes
pkg load symbolic
syms x
levi_limes = limit(abs(x)/x,x,0,'left');
desni_limes = limit(abs(x)/x,x,0,'right');
printf('Rezultat x -> 0- : \n');
disp(levi_limes);
printf('Rezultat x -> 0+ : \n');
disp(desni_limes);


#3. Dat je polinom
#a) nule polinoma:

syms x
P = x^3 - 4*x^2 + x + 6;
nule = solve(P == 0,x);
printf('Nule polinoma: \n');
disp(nule);

#a) nacin 2:

syms x
P = [1 -4 1 6];
nule_polinoma = roots(P);
disp(nule_polinoma);


# b) 1. & 2. izvod
P = x^3 - 4*x^2 + x + 6;
printf('Prvi i drugi izvod: \n');
prvi_izvod = diff(P,1);
disp(prvi_izvod);
drugi_izvod = diff(P,2);
disp(drugi_izvod);

#4. Odrediti presecne tacke kruga i prave:
syms x y
[a,b] = solve([x^2 + y^2 == 25, 2*y - x + 3 == 0],[x,y]);
disp(a);disp(b);

# 5.

A = [2,-1,3;1,0,-2;-1,4,1];
[n,m] = size(A);
B = ( A + eye(n) ) * ones(n);
if det(B) ~= 0
  resenje = inv(B);
  disp(resenje);
else
  printf('Matrica je singularna, resenje ne postoji.\n');
end

# 6.

A = [1,1,1,0;1,-2,0,1;2,1,-3,0;-2,2,0,-4];
B = [2;0;1;0];

# a) Kramer (metoda Determinanti)

function X = Cramer(A,B)
  [n,m] = size(A);
  if n ~= m
    error('Matrica A nije kvadratna.');
  endif
  if det(A) == 0
    error('Matrica A nije regularna.');
  endif
  for j = 1:m
    C = A;
    C(:,j) = B;
    X(j) = det(C) / det(A);
  endfor
  X = X';
endfunction

X = Cramer(A,B);
disp(X);


# b) Matricna

X = inv(A) * B;
disp(X);



# 7 Nacrtati funkciju na intervalu:

y = '2*x^2 + 4 / x^2 - 6';
fplot(y,[-50,50]);
axis([-50,50,0,15]);
hold on;
plot([-50,50],[2,2]);
hold off;

# 8. izracunati limes
syms x
y = x^2 - 3 / x^2 - x + 5;
resenje = limit(y,x,inf);
disp(resenje);


# 9. nacrtati funkcije koristeci subplot

#for n = 1:4
#  subplot(2,2,n);
#  x = -5:0.1:5;
#  y = x.^n;
#  plot(x,y);
#endfor


# 10. nacrtati funkciju koristeci subplot
for n = 1:5
  subplot(2,3,n);
  x = -5:0.1:5;
  y = x.^2 ./ n;
  plot(x,y);
endfor


# 11. Izracunati faktorijel

f = input('Unesi broj za racunanje faktorijela: '); i = f - 1;
while i >= 1
  f = f * i;
  i = i - 1;
endwhile
disp('Resenje je: '); disp(f);
