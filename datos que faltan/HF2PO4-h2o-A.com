%chk=HF2PO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.41975309    0.53086419    0.00000000
 O                 -2.70679709    0.41318219   -0.84885100
 O                  0.63352991   -0.67450981   -0.29566500
 F                  0.71817591    1.82351719   -0.34527500
 O                 -1.53751309    1.36785919   -1.10802900
 O                 -1.90925109   -0.53649281    0.03734100
 F                 -0.47277309    0.96789319    1.63193300
 O                  2.93571491    0.23834719   -0.56470200
 H                  3.83730791   -0.09561781   -0.63087300
 H                  2.85865591    1.20276519   -0.60952200

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



