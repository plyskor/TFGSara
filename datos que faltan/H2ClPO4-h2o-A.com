%chk=H2ClPO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -1.20987656    0.45679012    0.00000000
 O                 -0.63520556   -1.23374388   -0.21293300
 O                 -0.78453556    1.17278612   -1.47261000
 H                 -0.20220156    1.94979012   -1.40364200
 O                 -0.68088256    1.19907312    1.26618400
 O                 -2.79069956    0.07048012   -0.19593800
 Cl                 1.17234844   -1.51053288   -0.14007800
 O                 -3.04976556   -2.42006388   -0.08886400
 H                 -2.11467356   -2.67685888   -0.16077500
 H                 -3.68035056   -3.11873688   -0.29609700

 1 2 1.0 3 1.0 5 1.5 6 1.0
 2
 3 4 1.0
 4
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2ClPO4-h2o-A.wfx




