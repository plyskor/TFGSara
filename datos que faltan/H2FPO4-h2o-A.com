%chk=H2FPO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.30266345    0.13317191    0.00000000
 O                 -1.60150645   -0.61898909   -0.63921200
 O                 -0.24924145    1.59080191   -0.10714300
 F                 -0.25984045   -0.43432009    1.46252200
 O                  0.84345555   -0.72154609   -0.69785900
 H                  1.37148855   -0.19704109   -1.31159700
 O                 -2.78907545   -0.08059309    0.01587700
 O                 -2.96610178    1.92493944   -0.00404119
 H                 -2.00610178    1.92493944   -0.00404119
 H                 -3.28655637    2.82987527   -0.00404119

 1 2 1.0 3 2.0 4 1.0 5 1.5
 2
 3
 4
 5 6 1.0
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=H2FPO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2FPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2FPO4-h2o-A.wfx



