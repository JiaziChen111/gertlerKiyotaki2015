function out1 = KdcEq2Gt1(in1,Qrun)
%KDCEQ2GT1
%    OUT1 = KDCEQ2GT1(IN1,QRUN)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    27-Dec-2015 09:03:12

Dtp1 = in1(:,3);
Qtp1 = in1(:,1);
kHtp1 = in1(:,2);
t2 = conj(Qtp1);
t3 = conj(Dtp1);
t4 = conj(kHtp1);
t5 = t3.*4.220638390725214e24;
t6 = t2.*t4.*4.220638390725214e24;
t7 = t2.*-4.220638390725214e24+t5+t6;
t8 = t3.*2.305843009213694e18;
t9 = t4.^2;
t10 = t2.*t4.*2.305843009213694e18;
t13 = t2.*2.305843009213694e18;
t14 = t9.*1.745869034426148e17;
t11 = t8+t10-t13-t14+2.528812033012834e18;
t12 = t7.*t11;
t15 = t2.^2;
out1 = [t12;-t12;t11.*(t2.*-7.661186297727652e22+t3.*1.638896653773083e22+t15.*6.669440495976019e26-t2.*t3.*8.096180857926992e26+t2.*t4.*7.661186297727652e22-t4.*t15.*1.333888099195204e27+t9.*t15.*6.669440495976019e26+t3.^2.*1.426740361950973e26+t2.*t3.*t4.*8.096180857926992e26)];
