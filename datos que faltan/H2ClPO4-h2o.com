%chk=H2ClPO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                  0.10895884    0.25423728    0.00000000
 O                  1.45444084   -0.59106472   -0.41619100
 O                  0.00158884    1.34381128   -1.16197100
 H                 -0.33161516    2.18737428   -0.83403900
 O                  0.03307984    0.75514728    1.37827500
 O                 -0.95860416   -0.84042972   -0.46516000
 H                 -1.10436316   -1.52886472    0.19503500
 Cl                 2.97130084    0.19271228   -0.11271100
 O                 -1.34852363   -1.04598660    1.96891338
 H                 -0.38852363   -1.04598660    1.96891338
 H                 -1.66897822   -0.14105077    1.96891338

 1 2 1.0 3 1.5 5 2.0 6 1.5
 2 8 1.0
 3 4 1.0
 4
 5
 6 7 1.0
 7
 8
 9 10 1.0 11 1.0
 10
 11

--link1--
%chk=H2ClPO4-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=H2ClPO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=H2ClPO4-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

H2ClPO4-h2o.wfx




