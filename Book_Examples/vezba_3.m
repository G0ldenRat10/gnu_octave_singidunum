#1.
# Дати су елементи pi , e, 2 . Формирати матрицу 3x3, чију прву врсту чине
# дати бројеви, другу врсту њихови тангенси, а трећу врсту квадратни корени
# датих бројева.

a = pi;
b = exp(1);
c = 2;

A = [a, b, c; tan(a), tan(b), tan(c); sqrt(a), sqrt(b), sqrt(c)];

disp(A);

#2.
# Креирати произвољну матрицу А и одредити:
# а) члан на месту (3,1),
# б) другу врсту матрице А,
# в) збир А(2,2,) и А(3,3).

A = [1,2,3;4,5,6;7,8,9];
a = A(3,1); # 7
b = A(2,:); # 4,5,6
v = A(2,2) + A(3,3); # 14
disp(a);disp(b);disp(v);

#3.
# Укуцати и објаснити:
# A(:), A(:,:), A(1:2,3), A(:,3:-1:1), A([1 3],[2 3]), A(3,1)=90

disp(A(:)); # kolona po kolonu redja kao 1x1
disp(A(:,:)); # sve redove i sve kolone - isto sto i disp(A);
disp(A(1:2,3)); # 3 i 6
disp(A(:,3:-1:1)); # od pozadi
disp(A([1,3],[2,3])); # prvi red: element 2 i 3, poslednji red element 8 i 9
disp(A(3,1) = 90); # element u trecem redu, prvoj koloni 7 postaje 90

