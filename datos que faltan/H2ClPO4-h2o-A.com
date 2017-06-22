%chk=H2ClPO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 P                  0.08474577    0.03631961    0.00000000
 O                  1.43022777   -0.80898239   -0.41619100
 O                 -0.02262423    1.12589361   -1.16197100
 H                 -0.35582823    1.96945661   -0.83403900
 O                  0.00886677    0.53722961    1.37827500
 O                 -0.98281723   -1.05834739   -0.46516000
 Cl                 2.94708777   -0.02520539   -0.11271100
 O                 -1.37273670   -1.26390427    1.96891338
 H                 -0.41273670   -1.26390427    1.96891338
 H                 -1.69319129   -0.35896844    1.96891338

 1 2 1.0 3 1.5 5 2.0 6 1.5
 2 7 1.0
 3 4 1.0
 4
 5
 6
 7
 8 9 1.0 10 1.0
 9
 10

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=H2ClPO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

H2ClPO4-h2o-A.wfx



