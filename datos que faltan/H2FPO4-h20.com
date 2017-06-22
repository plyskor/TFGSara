%chk=H2FPO4-h20.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                  0.15738499    0.27845036    0.00000000
 O                 -1.14145801   -0.47371064   -0.63921200
 O                  0.21080699    1.73608036   -0.10714300
 F                  0.20020799   -0.28904164    1.46252200
 O                  1.30350399   -0.57626764   -0.69785900
 H                  1.83153699   -0.05176264   -1.31159700
 O                 -2.32902701    0.06468536    0.01587700
 H                 -2.63110701    0.69270736   -0.65879400
 O                 -2.50605334    2.07021789   -0.00404119
 H                 -1.54605334    2.07021789   -0.00404119
 H                 -2.82650793    2.97515372   -0.00404119

 1 2 1.0 3 2.0 4 1.0 5 1.5
 2
 3
 4
 5 6 1.0
 6
 7 8 1.0
 8
 9 10 1.0 11 1.0
 10
 11

--link1--
%chk=H2FPO4-h20.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=H2FPO4-h20.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-h20.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

H2FPO4-h20.wfx



