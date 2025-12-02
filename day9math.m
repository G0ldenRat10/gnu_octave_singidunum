# pkg load symbolic
# 1.

a = sym(3);b = sym(4);
c = 2/a + sqrt(b)

# 2x + 6 = x
syms x
solve(x == 2*x + 6,x)
ans = (sym) - 6

# x^2 + 6x = 5x

syms x
solve(x^2 + 6 == 5*x,x)
