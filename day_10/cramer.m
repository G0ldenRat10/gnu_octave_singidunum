function X = Cramer(A,B)
  [m,n] = size(A);
  if m ~= n,
    error('Matrica nije kvadratna'),
  endif

  if det(A) == 0,
    error('Matrica je singularna'),
  endif

  for j=1:n,
    C = A; C(:,j)=B; X(j)=det(C)/det(A);
  endfor
  X=X';

