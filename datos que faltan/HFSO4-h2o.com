%chk=HFSO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 S                 -2.08994707   -0.90828923    0.00000000
 O                 -2.17810807   -1.58941523   -1.25879300
 O                 -2.17551407   -1.58933023    1.25902400
 O                 -3.06166107    0.37985877    0.00079600
 H                 -2.56700507    1.21493877    0.00149300
 O                 -0.69777707    0.10471077   -0.00139900
 F                  0.43167893   -0.75958423   -0.00021700
 O                 -1.86067017    2.76014105   -0.00005924
 H                 -0.90067017    2.76014105   -0.00005924
 H                 -2.18112476    3.66507688   -0.00005924

 1 2 2.0 3 2.0 4 1.0 6 1.0
 2
 3
 4 5 1.0
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=HFSO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HFSO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HFSO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HFSO4-h2o.wfx



