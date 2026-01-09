# 1.
# Izracunati f(1,5) = ?
# f(x) = ( sqrt(x^3 + 2x^2 - 5) / sinx + cosx ) e^x * tgx - ln(x^2 + 1)

x = 1.5;
y = ( sqrt(x^3 + 2*x^2 - 5) / sin(x) + cos(x)) * exp(1)^x * tan(x) - log(x^2 + 1)

# 2.
# Definisati simbolicki polinom
# P(x) = x^3 - 6x^2 + 11x - 6
# a) odrediti nule polinoma
# b) prvi i drugi izvod

# pkg load symbolic

syms x
P = x^3 - 6*x^2 + 11*x -6;
nulaPolinoma = solve(P == 0,x);
prviIzvod = diff(P);
drugiIzvod = diff(P,2);
disp(nulaPolinoma),disp(prviIzvod),disp(drugiIzvod);

# 3.
# lim x --> 0+   od   |x| / x
# lim x --> 0-   od   |x| / x
syms x
y = abs(x) / x;
desni = limit(y,x,0,'right');
levi = limit(y,x,0,'left');
printf('Limes x -> 0+ :\n');
disp(desni);
printf('Limes x -> -0 :\n');
disp(levi);

# 4.
# Odrediti presek kruga
# x^2 + y^2 = 41
# i prave
# y - x - 1 = 0

syms x y
[a,b] = solve(x^2 + y^2 == 41,y - x - 1 == 0,x,y);
disp(a),disp(b);

# 5.
# Nacrtati funkciju y = 3x^2+5/x^2-10 na intervalu (-100,100)
# Ose skalirati tako da se x prikazuje od -100 do 100 a y od 0 do 20
# na istom grafiku nacrtati xorizontalnu pravu y = 3 ( za x od -100 do 100)

y = '3*x^2 + 5 / x^2 - 10';
fplot(y,[-100,100]);
axis([-100,100,0,20]);
hold on;
plot([-100,100],[3,3]);

# 6.
# lim kad x -> beskonacno  x^2 - 1 / x^2 + 2x - 3
# pkg load symbolic

syms x
resenje = limit(x^2 - 1/x^2 + 2*x - 3,x,inf);
printf('Resenje limesa: \n');
disp(resenje);

# 7.
# Sabrati A = [1,2,3;2,-3,1;-4,-5,5] sa jedinicnom matricom istih dimenzija,
# pomnoziti je sa matricom koja im aasve jedinice i naci A -1 (inverzna)

A = [1 2 3;2 -3 1;-4 -5 5];
[n,m] = size(A);
if n == m
  printf('Jedinicna matrica je moguca.\n');
  I = eye(n);
else
  printf('Jedinicna matrica nije moguca.\n');
end
C = (A + I) * ones(n);
if det(C) ~= 0
  printf('Matricu nije moguce resiti. det(C) je nula: \n');
  disp(det(C));
else
  resenje = inv(C);
  printf('Resenje matrice: \n');
  disp(resenje);
end

#8.
#Izračunati matričnu jednačinu:

#a) Rešiti sistem jednačina Kramerovom metodom
#b) Rešiti sistem jednačina Matričnom metodom
#  A+ B+C   =0
#−2A+2B+  D =1
# 2A+2B−4C  =1
#−4A+4B  −4D=0

# a)

A = [1,1,1,0;-2,2,0,1;2,2,-4,0;-4,4,0,-4];
B = [0;1;1;0];

[n,m] = size(A);
if n ~= m
  printf('Nije kvadratna matrica.\n');
elseif det(A) == 0
  printf('Matrica je singularna.\n');
else
  for j = 1:n
    C = A;
    C(:,j) = B;
    X(j) = det(C)/det(A);
  endfor
  X = X';
  printf('Rezultat Kramerove metode i nepoznatih jednacine: \n');
  disp(X);
end
# b)

A = [1,1,1,0;-2,2,0,1;2,2,-4,0;-4,4,0,-4];
B = [0;1;1;0];

X = inv(A) * B;
printf('Rezultat Matricne metode i nepoznatih jednacine:\n');
disp(X');

# 9.
#a)
#Nacrtati funkciju y= x^n, za vrednosti n=1 :6, koristiti narebu subplot i plot za crtanje
for n = 1:6
  subplot(2,3,n);
  x = -5:0.1:5;
  y = x.^n;
  plot(x,y);
endfor
#b)
#Nacrtati funkciju y= x^3/n, za vrednosti n=1 :5, koristiti narebu subplot i plot za crtanje

for n = 1:5
  subplot(2,3,n);
  x = -5:0.1:5;
  y = x.^3/n;
  plot(x,y);
endfor

# 10.
#Ispitati funkciju y=(x^2-1)/(x^2-4)
x = -5:0.1:5;
y = (x.^2 - 1) / (x.^2 - 4);
plot(x,y);

# 11.
# a) Izračunati faktorijel broj n. Broj n je jednak broju 10.
n = 10;
printf('faktorijel izracunat ugradjenom funkcijom: \n');
disp(factorial(n));

# b) Izračunati faktorijel broj n. Broj n je jednak broju 5.

i = 9, f = 5;

while i >= 1
  f = f * i;
  i = i - 1;
endwhile
printf('Faktorijel broja 5 rucnom petljom: \n');
disp(f);
