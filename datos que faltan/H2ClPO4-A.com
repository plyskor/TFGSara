%chk=H2ClPO4-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                  0.01210654    0.54479418    0.00000000
 O                  1.35758854   -0.30050782   -0.41619100
 O                 -0.09526346    1.63436818   -1.16197100
 H                 -0.42846746    2.47793118   -0.83403900
 O                 -0.06377246    1.04570418    1.37827500
 O                 -1.05545646   -0.54987282   -0.46516000
 Cl                 2.87444854    0.48326918   -0.11271100

 1 2 1.0 3 1.5 5 2.0 6 1.5
 2 7 1.0
 3 4 1.0
 4
 5
 6
 7

--link1--
%chk=H2ClPO4-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2ClPO4-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2ClPO4-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2ClPO4-A.wfx



