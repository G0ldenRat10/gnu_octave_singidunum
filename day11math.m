# 1.
# Izracunati f(1,5) = ?
# f(x) = ( sqrt(x^3 + 2x^2 - 5) / sinx + cosx ) e^x * tgx - ln(x^2 + 1)

 x = 1.5;
 y = ( sqrt(x^3 + 2*x^2 - 5) / sin(x) + cos(x) ) * exp(1)^x * tan(x) - log(x^2 + 1);
disp(y);


# 2.
# Definisati simbolicki polinom
# P(x) = x^3 - 6x^2 + 11x - 6
# a) odrediti nule polinoma
# b) prvi i drugi izvod

syms x
P = x^3 - 6*x^2 + 11*x - 6;
disp(solve(P == 0,x));
first = diff(P,1);
second = diff(P,2);
disp(first);
disp(second);


# 3.
# Odrediti presek kruga
# x^2 + y^2 = 41
# i prave
# y - x - 1 = 0


syms x y
[a,b] = solve(x^2 + y^2 == 41, y - x - 1 == 0,x,y);
disp(a);
disp(b);

# 4.
# lim x --> 0+   od   |x| / x
# lim x --> 0-   od   |x| / x

rightLim = limit(abs(x)/x,x,0,'right');
leftLim = limit(abs(x)/x,x,0,'left');
disp(rightLim), disp(leftLim);

