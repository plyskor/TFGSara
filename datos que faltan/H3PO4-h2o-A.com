%chk=H3PO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                 -2.63668427    0.23809523    0.00000000
 O                 -1.85613427   -0.17616777    1.19617800
 O                 -3.37107127    1.65920923    0.09175300
 H                 -3.91377927    1.74855923    0.88339900
 O                 -3.87029127   -0.73191077   -0.35031100
 H                 -3.64947327   -1.66064277   -0.21508800
 O                 -1.79022727    0.37211123   -1.32840600
 O                  0.57055373    0.19091623   -0.09861400
 H                  0.01404973   -0.04123377    0.66926100
 H                  1.05929073    0.97797123    0.16099100

 1 2 2.0 3 1.5 5 1.0 7 1.5
 2
 3 4 1.0
 4
 5 6 1.0
 6
 7
 8 9 1.0 10 1.0
 9
 10


--link1--
%chk=H3PO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H3PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H3PO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H3PO4-h2o-A.wfx



