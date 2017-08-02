function Kk = KkGt2Gt1(Dtp1,Qtp1,kHt,kHtp1)
%KKGT2GT1
%    KK = KKGT2GT1(DTP1,QTP1,KHT,KHTP1)

%    This function was generated by the Symbolic Math Toolbox version 6.3.
%    27-Dec-2015 08:48:32

Kk = ((Qtp1+1.26e-2).*(kHt.^2.*3.985e-3+(Dtp1.*1.628838942727744e-6-Qtp1.*7.614170521675112e-6+Qtp1.*kHtp1.*7.614170521675112e-6-Qtp1.^2.*kHtp1.*1.325702188852636e-1+Dtp1.^2.*1.417984628473704e-2+Qtp1.^2.*6.628510944263178e-2+Qtp1.^2.*kHtp1.^2.*6.628510944263178e-2-Dtp1.*Qtp1.*8.046495572736882e-2+Dtp1.*Qtp1.*kHtp1.*8.046495572736882e-2)./((kHt-1.0).*(Dtp1-Qtp1+Qtp1.*kHtp1))+((Dtp1.*7.205759403792794e21-Qtp1.*3.602879701896397e20-kHt.*8.625294006339974e19-Qtp1.*kHt.*6.845471433603154e21+Qtp1.*kHtp1.*7.205759403792794e21+8.708066564611342e19).*(Dtp1.*4.646317459986782e24-Qtp1.*4.646799243158299e24+Qtp1.*kHtp1.*4.646799243158299e24-Dtp1.*kHt.^2.*3.207685176951162e23+Qtp1.*kHt.^2.*3.207685176951162e23-Qtp1.^2.*kHtp1.*1.067110479356163e25+Dtp1.^2.*1.141392289560779e24+Qtp1.^2.*5.335552396780815e24+Qtp1.^2.*kHtp1.^2.*5.335552396780815e24-Dtp1.*Qtp1.*6.476944686341594e24+Dtp1.*Qtp1.*kHtp1.*6.476944686341594e24-Qtp1.*kHt.^2.*kHtp1.*3.207685176951162e23).*6.149528058968964e-25)./((Dtp1-Qtp1+Qtp1.*kHtp1).*(Dtp1.*1.441151880758559e22+Qtp1.*3.244393171557705e23-kHt.*4.269520533138287e21-Qtp1.*kHt.*3.388508359633561e23+Qtp1.*kHtp1.*1.441151880758559e22+kHtp1.^2.*2.591524347976314e22-3.7106004320086e23))-(kHt.*(Dtp1.*1.324360932341885e18-Qtp1.*6.190857614325376e18+Qtp1.*kHtp1.*6.190857614325376e18-Qtp1.^2.*kHtp1.*1.077889373087033e23+Dtp1.^2.*1.152921504606847e22+Qtp1.^2.*5.389446865435167e22+Qtp1.^2.*kHtp1.^2.*5.389446865435167e22-Dtp1.*Qtp1.*6.542368370042014e22+Dtp1.*Qtp1.*kHtp1.*6.542368370042014e22).*1.229905611793793e-24)./((kHt-1.0).*(Dtp1-Qtp1+Qtp1.*kHtp1))-5.772091578947369e-2).*(-9.9e1./1.0e2))./((kHt.*7.97e-3+(Dtp1.*3.094793991182713e-5-Qtp1.*1.446692399118271e-4+Qtp1.*kHtp1.*1.446692399118271e-4-Qtp1.^2.*kHtp1.*2.518834158820008+Dtp1.^2.*2.694170794100038e-1+Qtp1.^2.*1.259417079410004+Qtp1.^2.*kHtp1.^2.*1.259417079410004-Dtp1.*Qtp1.*1.528834158820008+Dtp1.*Qtp1.*kHtp1.*1.528834158820008)./((kHt-1.0).*(Dtp1-Qtp1+Qtp1.*kHtp1))).*(Dtp1.*(1.0./1.9e1)-Qtp1.*(1.0./1.9e1)+Qtp1.*kHtp1.*(1.0./1.9e1)-kHtp1.^2.*3.985e-3+5.772091578947369e-2))-1.0;
