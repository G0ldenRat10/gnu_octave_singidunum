# Nacrtati funkciju y = 3x^2+5/x^2-10 na intervalu (-100,100)
# Ose skalirati tako da se x prikazuje od -100 do 100 a y od 0 do 20
# na istom grafiku nacrtati xorizontalnu pravu y = 3 ( za x od -100 do 100)

y = '(3*x^2+5/x^2-10)'
fplot(y,[-100,100]),axis([-100,100,0,20]);
hold on;
plot([-100,100],[3,3]);  # [1st] - x druge, [2nd] - y druge


# lim kad x -> beskonacno  x^2 - 1 / x^2 + 2x - 3
# pkg load symbolic
#syms x
#limit(x^2-1/x^2+2*x-3, inf);


# Sabrati A = [1,2,3;2,-3,1;-4,-5,5] sa jedinicnom matricom istih dimenzija,
# pomnoziti je sa matricom koja im aasve jedinice i naci A -1 (inverzna)

A = [1,2,3;2,-3,1;-4,-5,5];
A + eye(3);
A * ones(3,4);
rezultat = inv(A);
disp(rezultat);

# 10! - Naci faktorijel od 10
i = 9; s = 10;
while i >= 1
  s = s * i;
  i = i - 1;
endwhile
disp(s);
