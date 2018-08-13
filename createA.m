function res = createA(input)
  [m, n] = size(input);
  N = m * n;
  A = double(zeros(N, N));
  ker = [0.000002, 0.000212,	0.000922,	0.000212,	0.000002;
         0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
         0.000922,	0.107391,	0.466066,	0.107391,	0.000922;
         0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
         0.000002,	0.000212,	0.000922,	0.000212,	0.000002];
  
  for k=1:N
    i = mod(k, m);
    if (i == 0)
      i = m;
    endif
    j = (k-i)/m + 1;
    if (j > 2)
      if (i > 2)
        A(k, m*(j-3)+i-2) = ker(1, 1);
      endif
      if (i > 1) 
        A(k, m*(j-3)+i-1) = ker(2, 1);
      endif
      A(k, m*(j-3)+i) = ker(3, 1);  
      if (i < m - 1)
        A(k, m*(j-3)+i+1) = ker(4, 1);
      endif
      if (i < m - 2)
        A(k, m*(j-3)+i+2) = ker(5, 1);
      endif
    endif
    if (j > 1)
     if (i > 2)  
      A(k, m*(j-2)+i-2) = ker(1, 2);
      endif
      if (i > 1)  
        A(k, m*(j-2)+i-1) = ker(2, 2);
      endif
        A(k, m*(j-2)+i) = ker(3, 2);
        if (i < m - 1)
          A(k, m*(j-2)+i+1) = ker(4, 2);
        endif
        if (i < m - 2)
          A(k, m*(j-2)+i+2) = ker(5, 2);
        endif
    endif
    if (i > 2)
      A(k, m*(j-1)+i-2) = ker(1, 3);
    endif
    if (i > 1)
      A(k, m*(j-1)+i-1) = ker(2, 3);
    endif  
    A(k, m*(j-1)+i) = ker(3, 3);
    if (i < m - 1)  
      A(k, m*(j-1)+i+1) = ker(4, 3);
    endif
    if (i < m - 2)  
      A(k, m*(j-1)+i+2) = ker(5, 3);
    endif
    if (j < n - 1)
      if (i > 2)  
        A(k, m*(j)+i-2) = ker(1, 4);
      endif
      if (i > 1)   
        A(k, m*(j)+i-1) = ker(2, 4);
      endif
      A(k, m*(j)+i) = ker(3, 4);
      if (i < m - 1)
        A(k, m*(j)+i+1) = ker(4, 4);
      endif
      if (i < m - 2)  
        A(k, m*(j)+i+2) = ker(5, 4);
      endif
    endif
    if (j < n - 2)
      if (i > 2)
        A(k, m*(j+1)+i-2) = ker(1, 5);
      endif
      if (i > 1)
        A(k, m*(j+1)+i-1) = ker(2, 5);
      endif
      A(k, m*(j+1)+i) = ker(3, 5);
      if (i < m - 1)
        A(k, m*(j+1)+i+1) = ker(4, 5);
      endif
      if (i < m - 2)
        A(k, m*(j+1)+i+2) = ker(5, 5);
      endif
    endif
  endfor
  res = A;
endfunction