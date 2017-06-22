%chk=HFCO3-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 C                 -0.78483244   -0.89065254    0.00000000
 O                 -1.81229544   -1.49779054    0.00017600
 O                  0.36898256   -1.62442554    0.00000800
 O                 -0.59011544    0.42110746    0.00008800
 H                 -1.46800444    0.82821346    0.00002800
 F                  1.53381356   -0.77898354    0.00016000
 O                 -1.11503216    2.24812480   -0.37584152
 H                 -0.15503216    2.24812480   -0.37584152
 H                 -1.43548675    3.15306063   -0.37584152

 1 2 2.0 3 1.0 4 1.5
 2
 3
 4 5 1.0
 5
 6
 7 8 1.0 9 1.0
 8
 9

--link1--
%chk=HFCO3-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HFCO3-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HFCO3-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HFCO3-h2o.wfx



