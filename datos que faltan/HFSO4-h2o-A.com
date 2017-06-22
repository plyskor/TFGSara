%chk=HFSO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 S                 -0.55555555   -0.02645503    0.00000000
 O                 -0.64371655   -0.70758103   -1.25879300
 O                 -0.64112255   -0.70749603    1.25902400
 O                 -1.52726955    1.26169297    0.00079600
 O                  0.83661445    0.98654497   -0.00139900
 F                  1.96607045    0.12224997   -0.00021700
 O                 -0.32627865    3.64197525   -0.00005924
 H                  0.63372135    3.64197525   -0.00005924
 H                 -0.64673324    4.54691108   -0.00005924

 1 2 2.0 3 2.0 4 1.0 5 1.0
 2
 3
 4
 5
 6
 7 8 1.0 9 1.0
 8
 9

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HFSO4-h2o-A.wfx



