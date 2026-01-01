# 1.
# Izracunati (A^2)^T + A^-1 / 4 + det(A)
# Matrica A je sastavljena od prvih 9 brojeva JMBG

A = [0,5,0;6,0,0;0,7,8];
B = ((A * A)' + A^-1 ) / (4 + det(A));
printf('Rezultat 1:\n');
disp(B);

# 2.
# Izracunati BA gde je:
A = [2,2,3;1,-1,0;-1,2,1];
B = [-1,0,2;0,1,-3];
printf('Rezultat 2:\n');
disp(B*A);

# 3.
# Izracunati (A - I) B, ako je:
A = [1,4,2;0,2,1;3,1,1];
B = [1,0,1;2,1,2;0,3,0];
I = eye(3,3);
printf('Rezultat 3:\n');
disp((A-I) * B);

# 4.
# A * X + X - B = 0 ako:
A = [4,9,3,2;
    5,25,7,9;
    8,2,9,11;
    9,3,1,0];
B = [3,5,9,7;
    0,5,9,3;
    0,9,4,2;
    2,3,3,6];
X = (A + eye(4)) \ B;
printf('Rezultat 4:\n');
disp(X);

# 5.
# definisati vektore x = 2,4,6,8,10 i y = 3,6,9,12,15
# izracunati z = (y/x)^2 + (x+y)^(y-x/x) pomocu operacije poljem brojeva

x = 2:2:10;
y = 3:3:15;
s = y - x / x;
z = (y./x).^2 + (x+y).^s;
printf('Rezultat 5:\n');
disp(z);

