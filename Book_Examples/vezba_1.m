# 1.
# Utvrditi sta je vece e^pi ili pi^e ?

e = exp(1);
x = e^pi;
y = pi^e;

if x > y
  printf('e^pi je vece od pi^e\n');
else
  printf('e^pi je manje od pi^e\n');
end

# 2.
# Ako je a = -18.2 , b = 6.42 , c = a / b , d = 0.5(cb + 2a)
# izracunati vrednost m = d - (a+b / c) + ((a+d)^2 /  sqrt(abs(abc)) )

a = -18.2;
b = 6.42;
c = a / b;
d = 0.5 * (c * b + 2 * a);
m = d - ( (a+b) / c ) + ( (a+d)^2 / sqrt(abs(a*b*c)) );
disp(m);

# 3.
# Uneti svoje ime i prezime pa odrediti broj slova u njemu

ime = 'John';
prezime = 'Smith';
size_ime = size(ime); # 1 4
size_ime = size_ime(2);
size_prezime = size(prezime); # 1 5
size_prezime = size_prezime(2);
final_size = size_ime + size_prezime;
printf('Finalna duzina karaktera imena i prezimena je: \n');
disp(final_size);

# ili

# ime_prezime = strcat(ime, prezime);
# duzina = size(ime_prezime);
# disp(duzina);

# 4.
# Proveriti tacnost izraza cos^2 * x / 2 == tgx + sinx / 2*tgx za x = pi / 5

x = pi / 5;
first = (cos(x/2))^2 / 2;
second = tan(x) + sin(x) / 2 * tan(x);
if first == second
  printf('They are the same value:\n');
  disp(first);
  disp(second);
else
  printf('They are not the same value:\n');
  disp(first);
  disp(second);
end
