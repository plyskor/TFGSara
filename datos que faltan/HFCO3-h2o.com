%chk=HFCO3-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 C                  0.12345679    0.60493826    0.00000000
 O                 -0.90400621   -0.00219974    0.00017600
 O                  1.27727179   -0.12883474    0.00000800
 O                  0.31817379    1.91669826    0.00008800
 H                 -0.55971521    2.32380426    0.00002800
 F                  2.44210279    0.71660726    0.00016000
 O                  0.22477243    3.00710087    0.89864274
 H                  1.18477243    3.00710087    0.89864274
 H                 -0.09568216    3.91203670    0.89864274

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


