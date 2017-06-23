%chk=HFSO4-h2o-A.chk
# opt freq b3lyp/6-311g geom=connectivity

Title Card Required

-1 1
 S                  0.17283951    0.11111111    0.00000000
 O                  1.57589151   -0.15458189   -0.70458600
 O                  0.02578451    0.35780811    1.57463700
 O                 -1.00296549   -0.99068089   -0.66615300
 O                 -0.76465149    1.62014911   -0.88348400
 F                 -0.42301749    2.83400611   -0.10546800
 O                 -3.17414149    0.12328811   -0.05917500
 H                 -3.15415749    1.06436811   -0.28471400
 H                 -3.91766549   -0.12683989    0.50253500

 1 2 1.0 3 1.0 4 1.0
 2
 3
 4
 5
 6
 7 8 1.0 9 1.0
 8
 9

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311+G(2df,2p) geom=check guess=read

Title Card Required

-1 1

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read pop=nboread

Title Card Required

-1 1

$nbo bndidx $end

--link1--
%chk=HFSO4-h2o-A.chk
# B3LYP/6-311G** geom=check guess=read output=wfx

Title Card Required

-1 1

HFSO4-h2o-A.wfx



