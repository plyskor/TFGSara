%chk=HF2PO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -1.26102291    0.34391534    0.00000000
 O                 -3.54806691    0.22623334   -0.84885100
 O                 -0.20773991   -0.86145866   -0.29566500
 F                 -0.12309391    1.63656834   -0.34527500
 O                 -2.37878291    1.18091034   -1.10802900
 O                 -2.75052091   -0.72344166    0.03734100
 F                 -1.31404291    0.78094434    1.63193300
 O                  2.09444509    0.05139834   -0.56470200
 H                  2.99603809   -0.28256666   -0.63087300
 H                  2.01738609    1.01581634   -0.60952200

 1 3 1.0 5 1.0 7 1.0
 2
 3
 4
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=HF2PO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HF2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HF2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HF2PO4-h2o-A.wfx



