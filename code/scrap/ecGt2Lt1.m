%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Eqn Conditions. Case t > 2, xtp1 < 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc

%% 1. Define Variables
syms Qt kHt Dt Rt Pt cHt PhIt Nt ...
     Qtp1 kHtp1 Dtp1 Rtp1 Ptp1 cHtp1 PhItp1 Ntp1 ...
     Qs qSs kHSs dSs rSs 

%% 2. Aux. Eqns
xtp1 = (Z + Qs)*(1-kHt)/((PhIt-1)*Nt*Rt);
Cbt  = ((1-sig)/sig)*(Nt-Wb);
Cbtp1  = ((1-sig)/sig)*(Ntp1-Wb);
t1 = (PhIt*((Z + Qtp1)/Qt) - Rt*(PhIt - 1));
t2 = Qt + alpha*kHt;
t3 = cHt/cHtp1;
t4 = cHt/Crun;

%% 3. Non-state equations
% For today
E3 = Pt   == 1 - xtp1;
E6 = cHt  == Z + Wh + Wb - (alpha/2)*(kHt^2) - Cbt;
E7 = PhIt == Qt*(1-kHt)/Nt;
E8 = Nt   == Qt*(1-kHt) - Dt;

% For tomorrow
E6p1 = cHtp1  == Z + Wh + Wb - (alpha/2)*(kHtp1^2) - Cbtp1;
E7p1 = PhItp1 == Qtp1*(1-kHtp1)/Ntp1;
E8p1 = Ntp1   == Qtp1*(1-kHtp1) - Dtp1;

%% 4. State Eqns.
H = sym('H',[4 1]);
H(1) = -PhIt + (beta/theta)*(1-Pt)*(1-sig + sig*theta*PhItp1)*t1;
H(2) = -Ntp1 + sig*Nt*t1 + Wb;
H(3) = -1 + Rt*beta*((1-Pt)*t3 + Pt*xtp1*t4);
H(4) = -1 + beta*((1-Pt)*t3*((Z+Qtp1)/t2) + Pt*t4*((Z+Qs)/t2));

%% 5. Manipulations
% Solve for E[3,6,7,8]
[pLt,ChLt,PhiLt,nLt,ChLtP1,PhiLtP1,nLtP1] = solve(...
    [E3,E6,E7,E8,E6p1,E7p1,E8p1],...
    [Pt,cHt,PhIt,Nt,cHtp1,PhItp1,Ntp1]);

% Substitute into H()
H = subs(H,...
    [Pt,cHt,PhIt,Nt,cHtp1,PhItp1,Ntp1],...
    [pLt,ChLt,PhiLt,nLt,ChLtP1,PhiLtP1,nLtP1]);

% Jacobian of Hlt - Include Rtp1 for Square Matrix
v = [ Qt,kHt,Dt,Rt,Qtp1,kHtp1,Dtp1,Rtp1 ];
dH = jacobian( H,v );

% Jacobian of Hlt for last period - no SS derivatives
dHlast = jacobian( H,v(1:4) );

%% 6. Generate Files

% => Add Qs to end
vOut = { [Qt,kHt,Dt,Rt],[Qtp1,kHtp1,Dtp1,Rtp1],Qs };

% H
matlabFunction(H,'file','Hlt','Vars',vOut);

% dH
matlabFunction(dH,'file','dHlt','Vars',vOut);

% dHlast
matlabFunction(dHlast,'file','dHltLast','Vars',vOut);

