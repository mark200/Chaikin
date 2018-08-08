function res = Chaikin(input)
[m, n] = size(input);
tmp(2: m+1, 2:n+1) = input;
tmp(1, 2:n+1) = input(1,:);
tmp(m+2, 2:n+1) = input(m, :);
tmp(2:m+1, 1) = input(:, 1);
tmp(2:m+1, n+2) = input(:, n);
tmp(1, 1) = input(1, 1);
tmp(1, n+2) = input(1, n);
tmp(m+2, 1) = input(m, 1);
tmp(m+2, n+2) = input(m, n);

for i=1:m
  for j=1:n
    res(2*i-1, 2*j-1) = (9*tmp(i+1, j+1) + 3*tmp(i+1, j) + 3*tmp(i, j+1) + tmp(i, j)) / 16;
    res(2*i-1, 2*j) = (9*tmp(i+1, j+1) + 3*tmp(i, j+1) + 3*tmp(i+1, j+2) + tmp(i, j+2)) / 16;
    res(2*i, 2*j-1) = (9*tmp(i+1, j+1) + 3*tmp(i+1, j) + 3*tmp(i+2, j+1) + tmp(i+2, j)) / 16;
    res(2*i, 2*j) = (9*tmp(i+1, j+1) + 3*tmp(i+2, j+1) + 3*tmp(i+1, j+2) + tmp(i+2, j+2)) / 16;
  endfor
  i
endfor
endfunction