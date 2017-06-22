%chk=HClCO3-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 C                  0.57319223    0.22045855    0.00000000
 O                  0.49509923    1.40057955    0.00000700
 O                  1.70205923   -0.49755745   -0.00001900
 O                 -0.47452877   -0.69038445   -0.00019500
 Cl                -2.04935977    0.01807555    0.00005200
 O                  3.08008420   -1.63208980   -0.35247855
 H                  4.04008420   -1.63208980   -0.35247855
 H                  2.75962961   -0.72715397   -0.35247855

 1 2 2.0 3 1.5 4 1.0
 2
 3
 4 5 1.0
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

HClCO3-h2o-A.wfx



