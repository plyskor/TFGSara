%chk=HClSO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 S                 -0.21958664    0.34813980   -0.18378226
 Cl                -3.11556164    0.28016780   -0.32994826
 O                  0.76666036    1.31118880   -0.59699426
 O                 -1.61933264    1.09059080   -0.69649626
 O                 -0.36711464   -0.16050020    1.14581574
 O                 -0.16397364   -0.94275820   -1.15027526
 H                  0.09136836   -0.66300920   -2.04343626
 O                 -0.02725750    0.73721317   -2.06973428
 H                  0.93274250    0.73721317   -2.06973428
 H                 -0.34771209    1.64214901   -2.06973428

 1 3 2.0 4 1.0 5 2.0 6 1.0
 2 4 1.0
 3
 4
 5
 6 7 1.0
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=HClSO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HClSO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HClSO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HClSO4-h2o.wfx



