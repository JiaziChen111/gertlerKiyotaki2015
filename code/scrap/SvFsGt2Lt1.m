function [Ns,PhIs,Qs,cHs] = SvFsGt2Lt1(in1,Qrun)
%SVFSGT2LT1
%    [NS,PHIS,QS,CHS] = SVFSGT2LT1(IN1,QRUN)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    22-Dec-2015 13:31:22

Nt = in1(:,1);
PhIt = in1(:,2);
Pt = in1(:,7);
Qt = in1(:,3);
Rt = in1(:,4);
cHt = in1(:,5);
kHt = in1(:,6);
t2 = Nt.^2;
t3 = PhIt.^2;
t4 = Pt.^2;
t5 = Nt.*3.018256175268364e19;
t6 = Pt.*cHt.*7.022237718977446e18;
t7 = Pt.*Qrun.*cHt.*5.573204538870989e20;
t8 = t5+t6+t7-Nt.*PhIt.*3.018256175268364e19-Pt.*cHt.*kHt.*7.022237718977446e18-Pt.*Qrun.*cHt.*kHt.*5.573204538870989e20;
t9 = 1.0./t8;
Ns = (t9.*(Nt.*Qt.*3.997260562325062e34-Nt.*PhIt.*Qt.*3.997260562325062e34+Pt.*Qt.*cHt.*9.299977292631322e33+Qt.*Rt.*t2.*3.305821828335344e38-Rt.*kHt.*t2.*t3.*2.634739997183269e36+Pt.*Qrun.*Qt.*cHt.*7.380934359231208e35-PhIt.*Qt.*Rt.*t2.*3.305821828335344e38-Pt.*Qt.*cHt.*kHt.*9.299977292631322e33+PhIt.*Rt.*kHt.*t2.*2.634739997183269e36+Nt.*Pt.*Qt.*Rt.*cHt.*7.691284432836908e37-Pt.*Qrun.*Qt.*cHt.*kHt.*7.380934359231208e35-PhIt.*Pt.*Rt.*cHt.*t2.*7.691284432836908e37+Pt.*Rt.*cHt.*t2.*t3.*7.691284432836908e37-Nt.*PhIt.*Pt.*Qt.*Rt.*cHt.*7.691284432836908e37+Nt.*Pt.*Qrun.*Qt.*Rt.*cHt.*6.104193994315007e39-Nt.*Pt.*Qt.*Rt.*cHt.*kHt.*7.691284432836908e37-PhIt.*Pt.*Qrun.*Rt.*cHt.*t2.*6.104193994315007e39+Pt.*Qrun.*Rt.*cHt.*t2.*t3.*6.104193994315007e39-Nt.*PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*6.104193994315007e39+Nt.*PhIt.*Pt.*Qt.*Rt.*cHt.*kHt.*7.691284432836908e37-Nt.*Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*6.104193994315007e39+Nt.*PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*6.104193994315007e39).*8.673617379884035e-20)./Qt;
if nargout > 1
    PhIs = (Nt.*PhIt.*Qt.*(-1.026945216465578e21)+Nt.*Qt.*Rt.*2.628427518875188e20+Nt.*Qt.*t3.*1.026945216465578e21-Nt.*PhIt.*Qt.*Rt.*2.628427518875188e20-Nt.*Pt.*Qt.*Rt.*2.628427518875188e20-PhIt.*Pt.*Qt.*cHt.*2.389278118099716e20+Pt.*Qt.*Rt.*cHt.*6.115267158528228e19+Nt.*PhIt.*Rt.*kHt.*2.094856732543525e18-Qt.*Rt.*cHt.*t4.*6.115267158528228e19-Nt.*Rt.*kHt.*t3.*2.094856732543525e18-Nt.*PhIt.*Pt.*Rt.*cHt.*6.115267158528228e19-PhIt.*Pt.*Qrun.*Qt.*cHt.*1.896252474682314e22-PhIt.*Pt.*Qt.*Rt.*cHt.*6.115267158528228e19+Pt.*Qrun.*Qt.*Rt.*cHt.*4.853386633752562e21-Nt.*PhIt.*Pt.*Rt.*kHt.*2.094856732543525e18+PhIt.*Pt.*Qt.*cHt.*kHt.*2.389278118099716e20-Pt.*Qt.*Rt.*cHt.*kHt.*6.115267158528228e19+Nt.*PhIt.*Rt.*cHt.*t4.*6.115267158528228e19+Nt.*Pt.*Rt.*cHt.*t3.*6.115267158528228e19+PhIt.*Qt.*Rt.*cHt.*t4.*6.115267158528228e19-Qrun.*Qt.*Rt.*cHt.*t4.*4.853386633752562e21+Nt.*Pt.*Rt.*kHt.*t3.*2.094856732543525e18+Qt.*Rt.*cHt.*kHt.*t4.*6.115267158528228e19-Nt.*Rt.*cHt.*t3.*t4.*6.115267158528228e19+Nt.*PhIt.*Pt.*Qt.*Rt.*2.628427518875188e20-Nt.*PhIt.*Pt.*Qrun.*Rt.*cHt.*4.853386633752562e21-PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*4.853386633752562e21+PhIt.*Pt.*Qrun.*Qt.*cHt.*kHt.*1.896252474682314e22+PhIt.*Pt.*Qt.*Rt.*cHt.*kHt.*6.115267158528228e19-Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*4.853386633752562e21+Nt.*PhIt.*Qrun.*Rt.*cHt.*t4.*4.853386633752562e21+Nt.*Pt.*Qrun.*Rt.*cHt.*t3.*4.853386633752562e21+PhIt.*Qrun.*Qt.*Rt.*cHt.*t4.*4.853386633752562e21-PhIt.*Qt.*Rt.*cHt.*kHt.*t4.*6.115267158528228e19+Qrun.*Qt.*Rt.*cHt.*kHt.*t4.*4.853386633752562e21-Nt.*Qrun.*Rt.*cHt.*t3.*t4.*4.853386633752562e21+PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*4.853386633752562e21-PhIt.*Qrun.*Qt.*Rt.*cHt.*kHt.*t4.*4.853386633752562e21)./((Pt-1.0).*(Nt.*Qt.*Rt.*9.658419760858765e20-Nt.*PhIt.*Qt.*Rt.*9.658419760858765e20+Pt.*Qt.*Rt.*cHt.*2.247116070072783e20+Nt.*PhIt.*Rt.*kHt.*7.697760549404436e18-Nt.*Rt.*kHt.*t3.*7.697760549404436e18-Nt.*PhIt.*Pt.*Rt.*cHt.*2.247116070072783e20-PhIt.*Pt.*Qt.*Rt.*cHt.*2.247116070072783e20+Pt.*Qrun.*Qt.*Rt.*cHt.*1.783425452438716e22-Pt.*Qt.*Rt.*cHt.*kHt.*2.247116070072783e20+Nt.*Pt.*Rt.*cHt.*t3.*2.247116070072783e20-Nt.*PhIt.*Pt.*Qrun.*Rt.*cHt.*1.783425452438716e22-PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*1.783425452438716e22+PhIt.*Pt.*Qt.*Rt.*cHt.*kHt.*2.247116070072783e20-Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*1.783425452438716e22+Nt.*Pt.*Qrun.*Rt.*cHt.*t3.*1.783425452438716e22+PhIt.*Pt.*Qrun.*Qt.*Rt.*cHt.*kHt.*1.783425452438716e22));
end
if nargout > 2
    Qs = t9.*(Nt.*7.606005561676277e21+Pt.*cHt.*1.769603905182316e21-Nt.*PhIt.*7.606005561676277e21-Nt.*Qt.*Rt.*6.036512350536728e23+Pt.*Qrun.*cHt.*1.404447543795489e23-Nt.*Rt.*kHt.*4.811100343377772e21-Pt.*cHt.*kHt.*1.769603905182316e21+Nt.*PhIt.*Qt.*Rt.*6.036512350536728e23+Nt.*Pt.*Rt.*cHt.*1.404447543795489e23+Nt.*PhIt.*Rt.*kHt.*4.811100343377772e21-Pt.*Qrun.*cHt.*kHt.*1.404447543795489e23-Nt.*PhIt.*Pt.*Rt.*cHt.*1.404447543795489e23+Nt.*Pt.*Qrun.*Rt.*cHt.*1.114640907774198e25-Nt.*PhIt.*Pt.*Qrun.*Rt.*cHt.*1.114640907774198e25).*(-5.0e-5);
end
if nargout > 3
    cHs = (Nt.*Rt.*cHt.*1.195229445406272e20-Nt.*PhIt.*Rt.*cHt.*1.195229445406272e20-Nt.*Pt.*Rt.*cHt.*1.195229445406272e20+Nt.*PhIt.*Pt.*Rt.*cHt.*1.195229445406272e20)./(Nt.*1.207302470107346e20+Pt.*cHt.*2.808895087590978e19-Nt.*PhIt.*1.207302470107346e20+Pt.*Qrun.*cHt.*2.229281815548396e21-Pt.*cHt.*kHt.*2.808895087590978e19-Pt.*Qrun.*cHt.*kHt.*2.229281815548396e21);
end