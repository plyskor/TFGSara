%chk=H2FPO4-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.42372883    0.56900726    0.00000000
 O                 -1.72257183   -0.18315374   -0.63921200
 O                 -0.37030683    2.02663726   -0.10714300
 F                 -0.38090583    0.00151526    1.46252200
 O                  0.72239017   -0.28571074   -0.69785900
 H                  1.25042317    0.23879426   -1.31159700
 O                 -2.91014083    0.35524226    0.01587700

 1 2 1.0 3 2.0 4 1.0 5 1.5
 2
 3
 4
 5 6 1.0
 6
 7

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2FPO4-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

—1 1

H2FPO4-A.wfx



