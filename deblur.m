function res = deblur(input)
  A = createA(input);
  [U, S, V] = svd(A);
  Svect = diag(S);
  [m, n] = size(input);
  input1 = reshape(input, [], 1);
  
  N = m * n;
  ans = zeros(N, 1);
  
  for i=1:N
      curSum = squeeze(U(:, i))' * input1;
      curSum = curSum / Svect(i);
      curSum = curSum * squeeze(V(i, :))';
      ans = ans + curSum;
  endfor
  
  res = reshape(ans, m, n);
endfunction