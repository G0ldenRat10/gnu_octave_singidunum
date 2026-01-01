# 1.
# Формирати матрицу димензија 5x5 чији се елементи формирају по
# закону a(i, j) = i + 2 j .

a = [];
for i = 1:5
  for j = 1:5
    a(i,j) = i + 2 * j;
  endfor
endfor
disp(a);

# 2.
# За унете године старости, у зависности да ли је тај број мањи од
# 21 исписати на излазу 'забрањен алкохол', ако је број година већи
# од 65 исписати 'алкохол забрањен из здравствених разлога', иначе,
# исписати 'дозвољено пити умерено'.

#godine = input('Unesi koliko imas godina: ');

if godine < 21
  printf('Zabranjen alkohol.');
elseif godine > 65
  printf('Alkohol zabranjen iz zdravstvenih razloga.');
else
  printf('Dovoljno piti umereno.');
end


# 3.
# Израчунати 5! користећи петље.

f = factorial(5);
disp(f);

# 4.
# neka je An = 1/2 + 1/3 + ... + 1/n. Resiti jednacinu An < 2
n = 1;
An = 1/n;
while An < 2
  n = n + 1;
  disp(An);
endwhile

