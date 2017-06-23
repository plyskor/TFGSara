%chk=HClCO3-h2o.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

0 1
 C                 -0.91358026    0.30864197    0.00000000
 O                 -0.99167326    1.48876297    0.00000700
 O                  0.21528674   -0.40937403   -0.00001900
 H                  0.00801074   -1.35428203    0.00085700
 O                 -1.96130126   -0.60220103   -0.00019500
 Cl                -3.53613226    0.10625897    0.00005200
 O                  0.38052031   -1.59818555   -1.72289229
 H                  1.34052031   -1.59818555   -1.72289229
 H                  0.06006572   -0.69324972   -1.72289229

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
%chk=HClCO3-h2o.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

0 1

--link1--
%chk=HClCO3-h2o.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

0 1

$nbo bndidx $end

--link1--
%chk=HClCO3-h2o.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

0 1

HClCO3-h2o.wfx