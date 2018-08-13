function res = wiener(input)
  psf = [0.000002, 0.000212,	0.000922,	0.000212,	0.000002;
         0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
         0.000922,	0.107391,	0.466066,	0.107391,	0.000922;
         0.000212,	0.024745,	0.107391,	0.024745,	0.000212;
         0.000002,	0.000212,	0.000922,	0.000212,	0.000002];
  res = deconvwnr(input, psf, 0);
endfunction