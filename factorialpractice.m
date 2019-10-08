for j=1:12
  factorial(j)
endfor

A=[factorial(1:3);factorial(4:6);factorial(7),factorial(8),factorial(9);factorial(10),factorial(11),factorial(12)]

errs = [2.817*10^(-1), 1.03*10^(-1), 2.022*10^(-2), 1.451*10^(-3), ...
2.046*10^(-5), 2.07*10^(-8), 2.953*10^(-13), 4.263*10^(-21), ...
8.777*10^(-34), 2.608*10^(-54), 1.595*10^(-87)]

for j=1:length(errs)-2
alpha = log(errs(j+2)/errs(j+1))/log(errs(j+1)/errs(j))
end%for