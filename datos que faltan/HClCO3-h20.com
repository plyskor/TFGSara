%chk=HClCO3-h20.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 C                 -0.27336860    0.14991181    0.00000000
 O                 -0.35146160    1.33003281    0.00000700
 O                  0.85549840   -0.56810419   -0.00001900
 H                  0.64822240   -1.51301219    0.00085700
 O                 -1.32108960   -0.76093119   -0.00019500
 Cl                -2.89592060   -0.05247119    0.00005200
 O                  2.23352337   -1.70263654   -0.35247855
 H                  3.19352337   -1.70263654   -0.35247855
 H                  1.91306878   -0.79770071   -0.35247855

 1 2 2.0 3 1.5 5 1.0
 2
 3 4 1.0
 4
 5 6 1.0
 6
 7 8 1.0 9 1.0
 8
 9

--link1--
%chk=HClCO3-h20.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HClCO3-h20.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HClCO3-h20.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HClCO3-h20.wfx



