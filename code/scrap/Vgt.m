function VsymGt = Vgt( s )
%VGT
%    VSYMGT = VGT(s(3),s(2),s(1),s(4))

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    15-s(3)ec-2015 17:44:24

t2 = s(2).*s(1);
t3 = s(3)-s(1)+t2;
t4 = 1.0./t3;
t5 = s(1)-t2;
t6 = t4.*t5;
t7 = t6+1.0;
t8 = s(4).*t7;
t9 = 1.0./s(1);
t10 = s(1)+1.26e-2;
t11 = t8-t4.*t5.*t9.*t10;
VsymGt = [t11.*(t4.*t5.*1.8373e-1-1.0./2.0e1).*(-5.118924508790072)+t4.*(s(1)-s(2).*s(1)),s(3)-s(1)+t2-t3.*t11.*(1.9e1./2.0e1)+1.148e-4,s(4).*(9.9e1./1.0e2)-1.0,s(2).*(-7.97e-3)-s(1).*(1.0./1.0e2)+1.2474e-2];
