%chk=HClSO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 S                 -0.92592591   -0.27336860    0.00000000
 Cl                -3.82190091   -0.34134060   -0.14616600
 O                  0.06032109    0.68968040   -0.41321200
 O                 -2.32567191    0.46908240   -0.51271400
 O                 -1.07345391   -0.78200860    1.32959800
 O                 -0.87031291   -1.56426660   -0.96649300
 H                 -0.61497091   -1.28451760   -1.85965400
 O                 -0.53982222    0.09842362   -2.32822255
 H                  0.42017778    0.09842362   -2.32822255
 H                 -0.86027681    1.00335945   -2.32822255

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

HCSO4-h2o.wfx



