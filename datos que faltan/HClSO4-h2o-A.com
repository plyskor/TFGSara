%chk=HClSO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 S                 -0.85537918   -0.92592591    0.00000000
 Cl                -3.75135418   -0.99389791   -0.14616600
 O                  0.13086782    0.03712309   -0.41321200
 O                 -2.25512518   -0.18347491   -0.51271400
 O                 -1.00290718   -1.43456591    1.32959800
 O                 -0.79976618   -2.21682391   -0.96649300
 O                 -0.46927549   -0.55413369   -2.32822255
 H                  0.49072451   -0.55413369   -2.32822255
 H                 -0.78973008    0.35080214   -2.32822255

 1 3 2.0 4 1.0 5 2.0 6 1.0
 2 4 1.0
 3
 4
 5
 6
 7 8 1.0 9 1.0
 8
 9

--link1--
%chk=HClSO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HClSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HClSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HClSO4-h2o-A.wfx



