brInd = 200109;

if (mod(brInd, 2) == 0)

  strbrInd = num2str(brInd); # pretvara 1234 -> '1234'
  # Display:
  printf('Paran broj: ');
  disp(strbrInd);

  # Zbir cifara parnog broja:
  zbir = 0;
  for i = 1:length(strbrInd)
    zbir = zbir + (strbrInd(i) - '0');
  endfor

  # Faktorijel n = zbir cifara brInd
  printf('Faktorijal zbira cifara indeksa je: ');
  disp(factorial(zbir));

elseif (mod(brInd, 2) == 1)

  strbrInd = num2str(brInd); # pretvara 1234 -> '1234'
  # Display:
  printf('Neparan broj: ');

  disp(strbrInd);

  # Zbir cifara neparnog broja:
  zbir = 0;
  for i = 1:length(strbrInd)
    zbir = zbir + (strbrInd(i) - '0');
  endfor

  # Faktorijel n = zbir cifara brInd
  printf('Faktorijal zbira cifara indeksa je: ');
  disp(factorial(zbir));

end
