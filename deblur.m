function res = deblur(input)
  %kernel = [0.000002, 0.000212,	0.000922,	0.000212,	0.000002;
  %          0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
  %          0.000922,	0.107391,	0.466066,	0.107391,	0.000922;
  %          0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
  %          0.000002,	0.000212,	0.000922,	0.000212,	0.000002];
  A = createA(input);
  [U, S, V] = svd(A);
  Svect = S(:);
  Vvect = V(:);
  Uvect = U';
  [m, n] = size(input);
  input1 = input(:);
  
  N = m * n;
  ans = 0;
  
  for i=1:N
      curSum = Uvect(i, :) * input1';
      curSum = curSum / Svect(i);
      curSum = curSum * Vvect(i);
      ans = ans + curSum;
  endfor
endfunction