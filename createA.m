function res = createA(input)
  [m, n] = size(input);
  N = m * n;
  A = double(zeros(N, N));
  kernel = [0.000002, 0.000212,	0.000922,	0.000212,	0.000002;
            0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
            0.000922,	0.107391,	0.466066,	0.107391,	0.000922;
            0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
            0.000002,	0.000212,	0.000922,	0.000212,	0.000002];
  
  for k=1:N
    i = mod(m, k);
    j = (k-1)/m + 1;
    if (m*(j-3)+i-2 > 0)
      A(k, m*(j-3)+i-2) = kernel(1, 1);
    endif
    if (m*(j-3)+i-1 > 0) 
      A(k, m*(j-3)+i-1) = kernel(2, 1);
    endif
    if (m*(j-3)+i > 0)
      A(k, m*(j-3)+i) = kernel(3, 1);
    endif
    if (m*(j-3)+i+1 > 0)  
      A(k, m*(j-3)+i+1) = kernel(4, 1);
    endif  
    if (m*(j-3)+i+2 > 0)
      A(k, m*(j-3)+i+2) = kernel(5, 1);
    endif
     if (m*(j-2)+i-2 > 0)  
      A(k, m*(j-2)+i-2) = kernel(1, 2);
    endif
    if (m*(j-2)+i-1 > 0)  
      A(k, m*(j-2)+i-1) = kernel(2, 2);
    endif
    if (m*(j-2)+i > 0)  
      A(k, m*(j-2)+i) = kernel(3, 2);
    endif
    if (m*(j-2)+i+1 > 0)  
      A(k, m*(j-2)+i+1) = kernel(4, 2);
    endif
    if (m*(j-2)+i+2 > 0)  
      A(k, m*(j-2)+i+2) = kernel(5, 2);
    endif
    if (m*(j-1)+i-2 > 0)  
      A(k, m*(j-1)+i-2) = kernel(1, 3);
    endif
    if (m*(j-1)+i-1 > 0)  
      A(k, m*(j-1)+i-1) = kernel(2, 3);
    endif
    if (m*(j-1)+i > 0)  
      A(k, m*(j-1)+i) = kernel(3, 3);
    endif
    if (m*(j-1)+i+1 > 0)  
      A(k, m*(j-1)+i+1) = kernel(4, 3);
    endif
    if (m*(j-1)+i+2 > 0)  
      A(k, m*(j-1)+i+2) = kernel(5, 3);
    endif
    if (m*(j)+i-2 > 0)  
      A(k, m*(j)+i-2) = kernel(1, 4);
    endif
    if (m*(j)+i-1 > 0)   
      A(k, m*(j)+i-1) = kernel(2, 4);
    endif
    if (m*(j)+i > 0)  
      A(k, m*(j)+i) = kernel(3, 4);
    endif
     if (m*(j)+i+1 > 0)
      A(k, m*(j)+i+1) = kernel(4, 4);
    endif
    if (m*(j)+i+2 > 0)  
      A(k, m*(j)+i+2) = kernel(5, 4);
    endif
    if (m*(j+1)+i-2 > 0)  
      A(k, m*(j+1)+i-2) = kernel(1, 5);
    endif
    if (m*(j+1)+i-1 > 0)
      A(k, m*(j+1)+i-1) = kernel(2, 5);
    endif
    if (m*(j+1)+i > 0)
      A(k, m*(j+1)+i) = kernel(3, 5);
    endif
    if (m*(j+1)+i+1 > 0)
      A(k, m*(j+1)+i+1) = kernel(4, 5);
    endif
    if (m*(j+1)+i+2 > 0)
      A(k, m*(j+1)+i+2) = kernel(5, 5);
    endif
  endfor
endfunction