# 2.
# Definisati simbolicki polinom
# P(x) = x^3 - 6x^2 + 11x - 6
# a) odrediti nule polinoma
# b) prvi i drugi izvod

# unutar command windowa:  pkg load symbolic

syms x
P = x^3 - 6 * x^2 + 11 * x - 6;
solve(P == 0, x); # nule polinoma
diff(p);          # prvi izvod
diff(p,2);        # drugi izvod





