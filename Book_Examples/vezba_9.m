# Uneti ovo:
# pkg load symbolic

# 1.
# Решити једначину x^2 - 2*x = 0

syms x
resenje = solve(x^2 - 2*x == 0, x);
printf('Resenja:\n');
disp(resenje);

# 2.
# Resiti jednacinu a*x^2 + 5*b*x - 2 = 0

syms a b x
resenje = solve(a * x^2 + 5 * b * x -2,a,b,x);
printf('Resenja: \n');
disp(resenje);

# 3.
# Resiti sistem jednacina 2x - y - 1 = 0 , i , x + 2y + 4 = 0
syms x y
resenje = solve(2*x - y - 1 == 0, x + 2*y + 4 == 0,x,y);
printf('Resenja: \n');
disp(resenje.x);
disp(resenje.y);

# 4.
# Nacrtati funkciju y = e^x + 1 u razlicitim domenima
syms x
y = exp(1)^x + 1;
n = sym(50);
ezplot(y,n);

# 5.
# Ispitati uzajamni polozaj kruga x^2 + y^2 = 1 i pravih
# a) x + y - 4 = 0
# b) x + y - 1 = 0
# c) x + y - sqrt(2) = 0
# zadatak uraditi racunarski i graficki

syms x y
# a [x y] = solve(x^2 + y^2 == 1, x + y - 4 == 0,x,y);
# isto tako za b i c
