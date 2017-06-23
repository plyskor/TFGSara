%chk=H2ClPO4-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 P                 -1.01234569    0.06172839    0.00000000
 O                  0.33313631   -0.78357361   -0.41619100
 O                 -1.11971569    1.15130239   -1.16197100
 H                 -1.45291969    1.99486539   -0.83403900
 O                 -1.08822469    0.56263839    1.37827500
 O                 -2.07990869   -1.03293861   -0.46516000
 H                 -2.22566769   -1.72137361    0.19503500
 Cl                 1.84999631    0.00020339   -0.11271100
 O                 -2.20157755   -1.61782664    1.41740558
 H                 -1.24157755   -1.61782664    1.41740558
 H                 -2.52203213   -0.71289081    1.41740558

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




