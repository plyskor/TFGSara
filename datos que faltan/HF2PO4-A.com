%chk=HF2PO4-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                  0.39951575    0.73849878    0.00000000
 O                 -1.86850625    0.95577078   -0.12169600
 O                  1.12598875   -0.34959322   -0.90776100
 F                  1.51750375    1.87735778   -0.27176400
 O                 -0.75104525    1.87067978   -0.32528600
 O                 -1.01149225   -0.19810122    0.08627300
 F                  0.81714275    0.57122478    1.50941700

 1 3 1.5 4 1.0 5 1.0 6 1.0 7 1.0
 2
 3
 4
 5
 6
 7

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2FPO4-A.wfx



