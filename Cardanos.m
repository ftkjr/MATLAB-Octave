function cubic = Cardanos( a, b, c, d )

%the formula
%x1 = S + T - (b/(3*a))
%x2= -(S+T)/2 -(b/(3*a)) + (i*3^(1/2))/2 *(S-T)
%x3= -(S+T)/2 -(b/(3*a)) - (i*3^(1/2))/2 *(S-T)
%where S = (R +(Q^3+R^2))^(1/3)
%where T= (R-(Q^3+R^2))^3
%and Q=(3*a*c-b^2)/(9*a^2)
%and R=(9*a*b*c-27*a^3*d-2*b^3)/(54*a^3)

Q = (3*a*c-b^2)/(9*a^2);
R = (9*a*b*c-27*a^2*d-2*b^3)/(54*a^3);
sq3r2 = sqrt(Q^3+R^2) ;
S = (R + sqrt(Q^3+R^2) )^(1/3);
T1 = -((sqrt(Q^3+R^2)-R)^(1/3));
T2 = (R-sqrt(Q^3+R^2))^(1/3);
if( T1 == real(T1))
x1t1 = S + T1 - (b/(3*a))
x2t1 = -(S+T1)/2 -(b/(3*a)) + (i*sqrt(3))/2 *(S-T1)
x3t1 = -(S+T1)/2 -(b/(3*a)) - (i*sqrt(3))/2 *(S-T1)
else
x1t2 = S + T2 - (b/(3*a))
x2t2 = -(S+T2)/2 -(b/(3*a)) + (i*3^(1/2))/2 *(S-T2)
x3t1 = -(S+T2)/2 -(b/(3*a)) - (i*3^(1/2))/2 *(S-T2)
endif
endfunction