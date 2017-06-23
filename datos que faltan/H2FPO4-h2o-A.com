%chk=H2FPO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.41975309   -0.08641975    0.00000000
 F                  0.12057691   -1.67987175    0.13217100
 O                  1.17605691    0.56940925    0.26266200
 O                 -1.28122809    0.16943825    1.37919400
 O                 -1.13942609    0.26203325   -1.34700700
 O                  1.00291491    2.07610625    0.21496000
 H                  1.60326791    2.28211825   -0.53474000
 O                 -3.36781309    0.89115125    0.16503900
 H                 -3.00981209    0.83403925   -0.74227900
 H                 -4.28225509    1.18953025    0.22067400

 1 2 1.0 3 1.0 4 1.0 5 1.5
 2
 3
 4
 5
 6 7 1.0
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



