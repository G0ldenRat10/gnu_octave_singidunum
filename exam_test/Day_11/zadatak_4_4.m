# NIJE LINEARNA

# Odrediti presek kruga
# x^2 + y^2 = 41
# i prave
# y - x - 1 = 0

# Import:
# pkg load symbolic
syms x
syms y
[a,b] = solve(x^2 + y^2 == 41, y - x - 1 == 0,x,y);



