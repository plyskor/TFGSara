%chk=H2FPO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                 -0.89194673    1.15394367    0.00000000
 F                  0.10697927   -0.02892933   -0.26153300
 O                 -2.23149773    0.29139867   -0.35238300
 O                 -0.65591873    2.08321867   -1.27079300
 H                 -0.47300773    2.99802867   -1.02495700
 O                 -0.81075873    1.79550067    1.31186700
 O                 -3.35846473    1.21056967   -0.24993200
 H                 -3.73010173    0.93072267    0.60105600
 O                 -1.20625971    3.78482369    0.38729813
 H                 -0.24625971    3.78482369    0.38729813
 H                 -1.52671430    4.68975952    0.38729813

 1 2 1.0 3 1.0 4 1.5 6 2.0
 2
 3
 4 5 1.0
 5
 6
 7 8 1.0
 8
 9 10 1.0 11 1.0
 10
 11

--link1--
%chk=H2FPO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=H2FPO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

H2FPO4-h2o.wfx




