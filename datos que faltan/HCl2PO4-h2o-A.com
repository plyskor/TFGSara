%chk=HCl2PO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -0.93827162   -0.11111111    0.00000000
 O                 -2.00953462   -0.36030211   -1.41422100
 O                 -0.65116362    1.46803289   -0.33615300
 O                  0.53044038   -0.98057311   -0.36927000
 O                 -1.46223062   -0.61952411    1.37389600
 Cl                 1.41202238   -0.55025411   -1.93032000
 Cl                -2.77551662   -2.01005711   -1.62020700
 O                 -2.41336162    2.32132889   -1.87992800
 H                 -2.81295562    3.13515389   -2.20611700
 H                 -2.77996462    1.50506889   -2.25486900

 1 2 1.0 3 1.0 4 1.0 5 1.5
 2
 3
 4
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HCl2PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HCl2PO4-h2o-A.wfx




