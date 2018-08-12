function res = deblur(input)
  [U, S, V] = svd(input);
  Svect = S(:);
  Vvect = V(:);
  [m, n] = size(U);
  
  for i=1:m
      for j=1:n
          Ut(j, i) = U(i, j);
      endfor
  endfor
  
  Utvect = Ut(:);
  [m, n] = size(input);
  N = m * n;
  ans = 0;
  
  for i=1:N
      curSum = Utvect(i) * input;
      curSum = curSum / Svect(i);
      curSum = curSum * Vvect(i);
      ans = ans + curSum;
  endfor
endfunction