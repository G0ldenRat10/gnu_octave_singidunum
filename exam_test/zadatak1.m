# ZADATAK 1:

brInd = 200109;

if (mod(brInd, 2) == 0)

  # 1. Deljivo sa dva:

  A = [2,0;
       0,1];

  B = [0,1;
       0,8];

  I = eye(2);

  # Formula: (A + I) X = B + 3
  # ne mozes da sabiras B sa celim brojem 3 -> 3I (3 jedinicne)
  # X = B + 3I / (A + I) - deljenje nije moguce sa matricama
  # pretvaram u inverznu matricu i mnozim ih:
  # X = inv(A + I) * (B + 3I)

  X = inv(A + I) * (B + 3*I);
  disp(X);
elseif (mod(brInd, 2) == 1)

  # 2. Nije deljivo sa dva:

  A = [2,0;
       0,1];
  B = [0,1;
       0,8];
  I = eye(2); # Dimenzije su 2x2

  # Formula: X(B-4) = B - I -> X(B - 4*I) = B - I -> X = (B - I) * inv(B -  4*I)
  X = (B - I) * inv(B - 4*I);
  disp(X);
end
