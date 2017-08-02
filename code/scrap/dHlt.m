function dH = dHlt(in1,in2,Qs)
%DHLT
%    DH = DHLT(IN1,IN2,QS)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    17-Dec-2015 15:34:39

Dt = in1(:,3);
Dtp1 = in2(:,3);
Qt = in1(:,1);
Qtp1 = in2(:,1);
Rt = in1(:,4);
kHt = in1(:,2);
kHtp1 = in2(:,2);
t2 = kHt-1.0;
t3 = Qt.*kHt;
t4 = Dt-Qt+t3;
t5 = 1.0./t4;
t6 = Qt-t3;
t7 = 1.0./t4.^2;
t8 = Qtp1+1.26e-2;
t9 = 1.0./Qt;
t10 = 1.0./Dt;
t11 = 1.0./Rt;
t12 = kHt.*6.3e1;
t13 = Qs.*kHt.*5.0e3;
t14 = Dt.*Rt.*5.0e3;
t21 = Qs.*5.0e3;
t15 = t12+t13+t14-t21-6.3e1;
t16 = t10.*t11.*t15.*1.023784901758014e-3;
t17 = t16-5.118924508790072;
t18 = Qtp1.*kHtp1;
t19 = Dtp1-Qtp1+t18;
t20 = 1.0./t19;
t22 = Qtp1-t18;
t23 = t20.*t22.*1.8373e-1;
t24 = t23-1.0./2.0e1;
t25 = t5.*t6;
t26 = t25+1.0;
t27 = Rt.*t26;
t29 = t5.*t6.*t8.*t9;
t28 = t27-t29;
t30 = kHtp1-1.0;
t31 = 1.0./t19.^2;
t32 = t2.*t5;
t33 = t2.*t6.*t7;
t34 = t32+t33;
t35 = t2.*t5.*t8.*t9;
t36 = 1.0./Qt.^2;
t37 = t5.*t6.*t8.*t36;
t38 = t2.*t6.*t7.*t8.*t9;
t39 = t35+t37+t38-Rt.*t34;
t40 = t5.*t8;
t41 = Qt.*t5;
t42 = Qt.*t6.*t7;
t43 = t41+t42;
t44 = t6.*t7.*t8;
t45 = t40+t44-Rt.*t43;
t46 = Rt.*t6.*t7;
t47 = t46-t6.*t7.*t8.*t9;
t48 = 1.0./Rt.^2;
t49 = kHt.*(1.0./1.9e1);
t50 = t49-1.0./1.9e1;
t51 = 1.0./t26;
t52 = Qs+1.26e-2;
t53 = Dt.*(1.0./1.9e1);
t54 = Qt.*kHt.*(1.0./1.9e1);
t55 = kHt.^2;
t59 = Qt.*(1.0./1.9e1);
t66 = t55.*3.985e-3;
t56 = t53+t54-t59-t66+5.772084210526315e-2;
t57 = t10.*t11.*t15.*2.0e-4;
t58 = t57-1.0;
t60 = Dtp1.*(1.0./1.9e1);
t61 = Qtp1.*kHtp1.*(1.0./1.9e1);
t62 = kHtp1.^2;
t67 = Qtp1.*(1.0./1.9e1);
t68 = t62.*3.985e-3;
t63 = t60+t61-t67-t68+5.772084210526315e-2;
t64 = 1.0./t63;
t65 = t21+6.3e1;
t69 = kHt.*7.97e-3;
t70 = t59-t69;
t71 = 1.0./t26.^2;
t72 = 1.0./Dt.^2;
t73 = 1.0./t63.^2;
t74 = kHt.*7.97e-3;
t75 = Qt+t74;
t76 = 1.0./t75;
t77 = 1.0./t75.^2;
t78 = t10-t11.*t15.*t72.*2.0e-4;
t79 = t11-t10.*t15.*t48.*2.0e-4;
t80 = kHtp1.*(1.0./1.9e1);
t81 = t80-1.0./1.9e1;
t82 = kHtp1.*7.97e-3;
t83 = t67-t82;
dH = reshape([-t2.*t5+t17.*t39.*(t20.*(Qtp1-Qtp1.*kHtp1).*1.8373e-1-1.0./2.0e1)-t2.*t6.*t7,t2.*t28.*(-1.9e1./2.0e1)-t4.*t39.*(1.9e1./2.0e1),Rt.*(t50.*t58.*t64-t2.^2.*t7.*t10.*t15.*t48.*t51.*t52.*t56.*3.730299356523361e-3+t2.*t5.*t10.*t15.*t48.*t50.*t51.*t52.*3.730299356523361e-3+t2.*t5.*t10.*t15.*t34.*t48.*t52.*t56.*t71.*3.730299356523361e-3).*(-9.9e1./1.0e2),t8.*t50.*t58.*t64.*t76.*(-9.9e1./1.0e2)+t8.*t56.*t58.*t64.*t77.*(9.9e1./1.0e2)+t10.*t11.*t15.*t50.*t52.*t76.*3.692996362958128e-3-t10.*t11.*t15.*t52.*t56.*t77.*3.692996362958128e-3,-Qt.*t5-Qt.*t6.*t7+t17.*t24.*t45+t10.*t11.*t24.*t28.*t65.*1.023784901758014e-3,Qt.*t28.*(-1.9e1./2.0e1)-t4.*t45.*(1.9e1./2.0e1),Rt.*(t58.*t64.*t70+t10.*t11.*t56.*t64.*t65.*2.0e-4+t5.*t10.*t15.*t48.*t51.*t52.*t56.*3.730299356523361e-3+t2.*t5.*t10.*t15.*t48.*t51.*t52.*t70.*3.730299356523361e-3+t2.*t5.*t10.*t48.*t51.*t52.*t56.*t65.*3.730299356523361e-3-Qt.*t2.*t7.*t10.*t15.*t48.*t51.*t52.*t56.*3.730299356523361e-3+t2.*t5.*t10.*t15.*t43.*t48.*t52.*t56.*t71.*3.730299356523361e-3).*(-9.9e1./1.0e2),t8.*t56.*t58.*t64.*t77.*7.8903e-3-t8.*t58.*t64.*t70.*t76.*(9.9e1./1.0e2)-t10.*t11.*t15.*t52.*t56.*t77.*2.943318101277628e-5+t10.*t11.*t15.*t52.*t70.*t76.*3.692996362958128e-3+t10.*t11.*t52.*t56.*t65.*t76.*3.692996362958128e-3-t8.*t10.*t11.*t56.*t64.*t65.*t76.*1.98e-4,-t6.*t7+t24.*t28.*(t10.*5.118924508790072-t11.*t15.*t72.*1.023784901758014e-3)-t17.*t24.*t47,Rt.*t26.*(-1.9e1./2.0e1)+t4.*t47.*(1.9e1./2.0e1)+t5.*t6.*t8.*t9.*(1.9e1./2.0e1),Rt.*(t58.*t64.*(1.0./1.9e1)+t56.*t64.*t78+t2.*t5.*t10.*t15.*t48.*t51.*t52.*1.963315450801769e-4+t2.*t5.*t10.*t11.*t51.*t52.*t56.*1.865149678261681e1-t2.*t7.*t10.*t15.*t48.*t51.*t52.*t56.*3.730299356523361e-3-t2.*t5.*t15.*t48.*t51.*t52.*t56.*t72.*3.730299356523361e-3+t2.*1.0./t4.^3.*t6.*t10.*t15.*t48.*t52.*t56.*t71.*3.730299356523361e-3).*(-9.9e1./1.0e2),t10.*t52.*t56.*t76.*1.846498181479064e1-t8.*t58.*t64.*t76.*5.210526315789474e-2+t10.*t11.*t15.*t52.*t76.*1.943682296293751e-4-t8.*t56.*t64.*t76.*t78.*(9.9e1./1.0e2)-t11.*t15.*t52.*t56.*t72.*t76.*3.692996362958128e-3,t24.*t28.*(t11.*5.118924508790072-t10.*t15.*t48.*1.023784901758014e-3)+t17.*t24.*t26,t4.*t26.*(-1.9e1./2.0e1),Rt.*(t56.*t64.*t79+t2.*t5.*t48.*t51.*t52.*t56.*1.865149678261681e1-1.0./Rt.^3.*t2.*t5.*t10.*t15.*t51.*t52.*t56.*7.460598713046723e-3).*(-9.9e1./1.0e2)-t56.*t58.*t64.*(9.9e1./1.0e2)-t2.*t5.*t10.*t15.*t48.*t51.*t52.*t56.*3.692996362958128e-3,t11.*t52.*t56.*t76.*1.846498181479064e1-t8.*t56.*t64.*t76.*t79.*(9.9e1./1.0e2)-t10.*t15.*t48.*t52.*t56.*t76.*3.692996362958128e-3,-t17.*t28.*(t20.*t30.*1.8373e-1+t22.*t30.*t31.*1.8373e-1)-t5.*t6.*t9.*t17.*t24,kHtp1+t6.*t9.*(1.9e1./2.0e1)-1.0,Rt.*t56.*t58.*t73.*t81.*(9.9e1./1.0e2),t56.*t58.*t64.*t76.*(-9.9e1./1.0e2)+t8.*t56.*t58.*t73.*t76.*t81.*(9.9e1./1.0e2),-t17.*t28.*(Qtp1.*t20.*1.8373e-1+Qtp1.*t22.*t31.*1.8373e-1),Qtp1,Rt.*t56.*t58.*t73.*t83.*(9.9e1./1.0e2),t8.*t56.*t58.*t73.*t76.*t83.*(9.9e1./1.0e2),t17.*t22.*t28.*t31.*(-1.8373e-1),1.0,Rt.*t56.*t58.*t73.*5.210526315789474e-2,t8.*t56.*t58.*t73.*t76.*5.210526315789474e-2,0.0,0.0,0.0,0.0],[4,8]);
