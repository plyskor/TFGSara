%chk=HClCO3-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 C                  0.00000000    0.67901234    0.00000000
 O                 -0.84048300    1.54765734    0.00324100
 O                  1.32862500    0.79930134   -0.00280200
 O                 -0.26830100   -0.74527066   -0.00163200
 Cl                -2.04515700   -1.19844066    0.00005700
 O                  2.41219000   -1.50344966   -0.00275900
 H                  1.70344200   -2.16191466    0.00027000
 H                  3.29846400   -1.88230266    0.03364800

 1 2 2.0 3 1.5 4 1.0
 2
 3
 4
 5
 6 7 1.0 8 1.0
 7
 8

--link1--
%chk=HClCO3-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HClCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HClCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HClO3-h2o-A.wfx



