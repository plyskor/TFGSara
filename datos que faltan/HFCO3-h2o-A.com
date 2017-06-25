%chk=HFCO3-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 C                 -0.34591195    0.22012578    0.00000000
 O                 -1.37337495   -0.38701222    0.00017600
 O                  0.80790305   -0.51364722    0.00000800
 O                 -0.15119495    1.53188578    0.00008800
 F                  1.97273405    0.33179478    0.00016000
 O                 -0.24459631    2.62228839    0.89864274
 H                  0.71540369    2.62228839    0.89864274
 H                 -0.56505090    3.52722422    0.89864274

 1 2 2.0 3 1.0 4 1.5
 2
 3
 4
 5
 6 7 1.0 8 1.0
 7
 8

--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HFCO3-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HFCO3-h2o-A.wfx



